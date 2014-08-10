#-*- encoding: utf-8 -*-
import collections
import itertools
import os
from abjad import *
from plague_water import plague_water_configuration
from plague_water.makers.PlagueWaterObject import PlagueWaterObject


class SegmentMaker(PlagueWaterObject):

    ### SLOTS ###

    __slots__ = (
        'cached_meters',
        'context_makers',
        'context_map',
        'is_final_segment',
        'lilypond_file',
        'measure_segmentation_talea',
        'meters',
        'permitted_time_signatures',
        'rebarrings',
        'score',
        'segment_duration',
        'segment_id',
        'segment_name',
        'segment_tempo',
        'target_segment_duration',
        'time_signatures',
        )

    ### INITIALIZER ###

    def __init__(
        self,
        context_makers=None,
        context_map=None,
        is_final_segment=None,
        measure_segmentation_talea=None,
        permitted_time_signatures=None,
        rebarrings=None,
        segment_id=None,
        segment_name=None,
        segment_tempo=None,
        target_segment_duration=None,
        ):
        self._prepare(
            allow_none_as_sentinel=True,
            context_map=context_map,
            is_final_segment=is_final_segment,
            measure_segmentation_talea=measure_segmentation_talea,
            permitted_time_signatures=permitted_time_signatures,
            rebarrings=rebarrings,
            segment_id=segment_id,
            segment_name=segment_name,
            target_segment_duration=target_segment_duration,
            segment_tempo=segment_tempo,
            context_makers=context_makers,
            )

    ### SPECIAL METHODS ###

    def __call__(self, current_file_path=None):
        from plague_water import makers

        ### VALIDATE AND SETUP ###
        self._prepare(
            allow_none_as_sentinel=False,
            context_makers=self.context_makers,
            context_map=self.context_map,
            is_final_segment=self.is_final_segment,
            measure_segmentation_talea=self.measure_segmentation_talea,
            permitted_time_signatures=self.permitted_time_signatures,
            rebarrings=self.rebarrings,
            segment_id=self.segment_id,
            segment_name=self.segment_name,
            segment_tempo=self.segment_tempo,
            target_segment_duration=self.target_segment_duration,
            )

        ### CREATE SCORE ###
        template = makers.PlagueWaterScoreTemplate()
        self.score = template()

        ### BUILD TIMESPAN STRUCTURES ###
        self.create_semantic_timespans()
        self.meters = self.find_meters()
        self.time_signatures = tuple(meter.implied_time_signature
            for meter in self.meters)
        self.segment_duration = sum(time_signature.duration
            for time_signature in self.time_signatures)
        if self.rebarrings is not None:
            print('\trebarring')
            rebarrings = [TimeSignature(x) for x in self.rebarrings]
            rebarring_duration = sum(x.duration for x in rebarrings)
            assert self.segment_duration == rebarring_duration
            self.time_signatures = tuple(rebarrings)
            self.meters = tuple(metertools.Meter(x) for x in rebarrings)
        self.cleanup_semantic_timespans()
        self.create_dependent_timespans()
        self.remove_percussion_overlap()
        self.remove_empty_trailing_measures()
        self.create_silent_timespans()

        ### CREATE NOTATION ###
        self.populate_time_signature_context()
        self.populate_rhythms(rewrite_meter=True)
        self.cleanup_silences()
        self.apply_graces()
        self.apply_pitches()
        self.apply_registers()
        self.apply_chords()
        self.apply_guitar_octavations()
        self.apply_piano_clefs_and_octavations()
        # self.apply_piano_staff_changes()
        self.color_piano_conflicts()
        self.apply_indicators()
        self.apply_dynamics()
        self.apply_spanners()
        self.fix_grace_spanners()
        self.apply_initial_indicators()
        self.fix_guero_glissandi()

        ### APPLY LAYOUT ###
        self.configure_score()
        assert inspect_(self.score).is_well_formed()
        self.configure_lilypond_file()
        return self.lilypond_file

    def __getitem__(self, item):
        item = str(item)
        for context_maker in self.context_makers:
            if context_maker.context_name == item:
                return context_maker

    def __illustrate__(self):
        return self()

    def __makenew__(self, **kwargs):
        from abjad.tools import systemtools
        manager = systemtools.StorageFormatManager
        keyword_argument_dictionary = \
            manager.get_keyword_argument_dictionary(self)
        for key, value in kwargs.iteritems():
            if key in keyword_argument_dictionary:
                keyword_argument_dictionary[key] = value
            else:
                raise KeyError(key)
        result = type(self)(**keyword_argument_dictionary)
        return result

    ### PRIVATE METHODS ###

    def _make_silent_division(
        self,
        duration,
        division_offset=None,
        initial_offset=None,
        meter=None,
        starts_at_bar_line=True,
        stops_at_bar_line=True,
        ):
        division = Container()
        multiplier = Multiplier(duration)
        if starts_at_bar_line and stops_at_bar_line:
            rest = scoretools.MultimeasureRest(1)
            attach(multiplier, rest)
            division.append(rest)
        else:
            rests = scoretools.make_rests(duration)
            division.extend(rests)
            mutate(division[:]).rewrite_meter(
                meter,
                boundary_depth=1,
                initial_offset=initial_offset,
                maximum_dot_count=2,
                )
        return division

    def _make_silent_divisions(
        self,
        parts,
        start_offset,
        starts_at_bar_line=None,
        stops_at_bar_line=None,
        ):
        result = []
        if len(parts) == 1:
            division_offset = start_offset
            duration = sum(parts[0])
            initial_offset, meter = \
                self.get_initial_offset_and_meter_at_offset(
                    division_offset)
            division = self._make_silent_division(
                duration,
                division_offset=division_offset,
                initial_offset=initial_offset,
                meter=meter,
                starts_at_bar_line=starts_at_bar_line,
                stops_at_bar_line=stops_at_bar_line,
                )
            result.append(division)
        else:
            division_offset = start_offset
            duration = sum(parts[0])
            initial_offset, meter = \
                self.get_initial_offset_and_meter_at_offset(
                    division_offset)
            division = self._make_silent_division(
                duration,
                division_offset=division_offset,
                initial_offset=initial_offset,
                meter=meter,
                starts_at_bar_line=starts_at_bar_line,
                stops_at_bar_line=True,
                )
            result.append(division)
            division_offset += duration
            for part in parts[1:-1]:
                duration = sum(part)
                division_offset += duration
                initial_offset, meter = \
                    self.get_initial_offset_and_meter_at_offset(
                        division_offset)
                division = self._make_silent_division(
                    duration,
                    division_offset=division_offset,
                    initial_offset=initial_offset,
                    meter=meter,
                    )
                result.append(division)
            duration = sum(parts[-1])
            initial_offset, meter = \
                self.get_initial_offset_and_meter_at_offset(
                    division_offset)
            division = self._make_silent_division(
                duration,
                division_offset=division_offset,
                initial_offset=initial_offset,
                meter=meter,
                starts_at_bar_line=True,
                stops_at_bar_line=stops_at_bar_line,
                )
            result.append(division)
        return result

    def _partition_music_durations(
        self,
        music,
        ):
        timespan = inspect_(music).get_timespan()
        measure_offsets = [offset
            for offset in self.measure_offsets
            if timespan.start_offset <= offset and
            offset <= timespan.stop_offset
            ]
        weight_offsets = measure_offsets[:]
        starts_at_bar_line = True
        if not weight_offsets or \
            weight_offsets[0] != timespan.start_offset:
            weight_offsets.insert(0, timespan.start_offset)
            starts_at_bar_line = False
        stops_at_bar_line = True
        if not weight_offsets or \
            weight_offsets[-1] != timespan.stop_offset:
            weight_offsets.append(timespan.stop_offset)
            stops_at_bar_line = False
        weights = mathtools.difference_series(weight_offsets)
        sequence = [inspect_(division).get_duration()
            for division in music]
        try:
            parts = sequencetools.partition_sequence_by_weights(
                sequence, weights)
        except PartitionError:
            parts = [[weight] for weight in weights]
        return parts, starts_at_bar_line, stops_at_bar_line

    def _prepare(
        self,
        allow_none_as_sentinel=False,
        context_makers=None,
        context_map=None,
        is_final_segment=False,
        measure_segmentation_talea=None,
        permitted_time_signatures=None,
        rebarrings=None,
        segment_id=None,
        segment_name=None,
        segment_tempo=None,
        target_segment_duration=None,
        ):
        from plague_water import makers
        ### TIMESPAN MAKERS ###
        if not allow_none_as_sentinel:
            prototype = (makers.ContextMaker, type(None))
            assert len(context_makers)
            assert all(isinstance(x, prototype) for x in context_makers)
            context_makers = sorted(
                context_makers,
                key=lambda x: x.context_name,
                )
            context_makers = tuple(context_makers)
            context_names = set([x.context_name for x in context_makers])
            assert len(context_names) == len(context_makers)
        ### OTHER ###
        assert isinstance(context_map, datastructuretools.ContextMap)
        permitted_time_signatures = indicatortools.TimeSignatureInventory(
            permitted_time_signatures)
        assert len(permitted_time_signatures)
        if not isinstance(segment_tempo, Tempo):
            segment_tempo = Tempo(segment_tempo)
        if measure_segmentation_talea is not None:
            assert len(measure_segmentation_talea)
            assert mathtools.all_are_positive_integers(
                measure_segmentation_talea)
        if target_segment_duration is not None:
            target_segment_duration = Duration(target_segment_duration)
            assert 0 < target_segment_duration
        ### APPLY ###
        self.cached_meters = {}
        self.context_makers = context_makers
        self.context_map = context_map
        self.is_final_segment = is_final_segment
        self.lilypond_file = None
        self.measure_segmentation_talea = measure_segmentation_talea
        self.meters = None
        self.permitted_time_signatures = permitted_time_signatures
        self.rebarrings = rebarrings
        self.score = None
        self.segment_duration = None
        self.segment_id = str(segment_id)
        self.segment_name = segment_name
        self.segment_tempo = segment_tempo
        self.target_segment_duration = target_segment_duration
        self.time_signatures = None

    ### PUBLIC METHODS ###

    def apply_chords(self):
        from plague_water import makers
        message = '\tapplying chords'
        with systemtools.ForbidUpdate(self.score):
            with systemtools.ProgressIndicator(message) as progress_indicator:
                for leaf in iterate(self.score).by_timeline(Note):
                    logical_tie = inspect_(leaf).get_logical_tie()
                    if leaf is not logical_tie.head:
                        continue
                    inspector = inspect_(leaf)
                    music_maker = inspector.get_effective(makers.MusicMaker)
                    if music_maker is None:
                        continue
                    chord_agent = music_maker.chord_agent
                    if chord_agent is None:
                        continue
                    chord_agent(
                        logical_tie=logical_tie,
                        segment_duration=self.segment_duration,
                        )
                    progress_indicator.advance()

    def apply_dynamics(self):
        message = '\tapplying dynamics'
        music_maker_seeds = collections.Counter()
        with systemtools.ProgressIndicator(message) as progress_indicator:
            for music, music_maker in \
                self.iterate_containers_and_music_makers():
                seed = music_maker_seeds[music_maker]
                dynamic_agent = music_maker.dynamic_agent
                if dynamic_agent is None:
                    continue
                dynamic_agent(
                    music=music,
                    seed=seed,
                    segment_duration=self.segment_duration,
                    )
                music_maker_seeds[music_maker] += 1
                progress_indicator.advance()

    def apply_graces(self):
        from plague_water import makers
        message = '\tmaking graces'
        with systemtools.ProgressIndicator(message) as progress_indicator:
            for leaf in iterate(self.score).by_timeline(Note):
                logical_tie = inspect_(leaf).get_logical_tie()
                if leaf is not logical_tie.head:
                    continue
                music_maker = inspect_(leaf).get_effective(makers.MusicMaker)
                grace_maker = music_maker.grace_maker
                if grace_maker is None:
                    continue
                grace_maker(
                    logical_tie=logical_tie,
                    segment_duration=self.segment_duration,
                    )
                progress_indicator.advance()

    def apply_indicators(self):
        message = '\tapplying indicators'
        music_maker_seeds = collections.Counter()
        with systemtools.ProgressIndicator(message) as progress_indicator:
            for music, music_maker in \
                self.iterate_containers_and_music_makers():
                seed = music_maker_seeds[music_maker]
                indicator_agent = music_maker.indicator_agent
                if indicator_agent is None:
                    continue
                indicator_agent(
                    music=music,
                    seed=seed,
                    segment_duration=self.segment_duration,
                    )
                music_maker_seeds[music_maker] += 1
                progress_indicator.advance()

    def apply_initial_indicators(self):
        message = '\tapplying initial indicators'
        with systemtools.ProgressIndicator(message) as progress_indicator:
            for voice in iterate(self.score).by_class(Voice):
                voice_name = voice.name
                context_maker = self[voice_name]
                context_maker.apply_initial_indicators(voice)
                progress_indicator.advance()

    def apply_guitar_octavations(self):
        message = '\tapplying guitar octavations'
        print(message)
        staff = self.score['Guitar Staff']
        leaves = list(iterate(staff).by_class(scoretools.Leaf))
        groups = list(iterate(leaves).by_run(
            (scoretools.Note, scoretools.Chord)))
        for group in groups:
            pitches = []
            previous_leaf = inspect_(group[0]).get_leaf(-1)
            if previous_leaf is not None:
                inspector = inspect_(previous_leaf)
                after_graces = inspector.get_grace_containers('after')
                if after_graces:
                    for grace_note in after_graces[0]:
                        pitches.append(grace_note.written_pitch)
            for leaf in group[:-1]:
                if isinstance(leaf, scoretools.Note):
                    pitches.append(leaf.written_pitch)
                else:
                    pitches.extend(leaf.written_pitches)
                inspector = inspect_(leaf)
                after_graces = inspector.get_grace_containers('after')
                if after_graces:
                    for grace_note in after_graces[0]:
                        pitches.append(grace_note.written_pitch)
            leaf = group[-1]
            if isinstance(leaf, scoretools.Note):
                pitches.append(leaf.written_pitch)
            elif isinstance(leaf, scoretools.Chord):
                pitches.extend(leaf.written_pitches)
            average = int(sum(float(x) for x in pitches) / len(pitches))
            average = pitchtools.NamedPitch(average)
            octavation = None
            if NamedPitch('B4') < average:
                octavation = 1
            if NamedPitch('C4') < min(pitches) and \
                NamedPitch('C5') < max(pitches):
                octavation = 1
            if octavation is not None:
                leaves = []
                if previous_leaf is not None:
                    inspector = inspect_(previous_leaf)
                    after_graces = inspector.get_grace_containers('after')
                    if after_graces:
                        leaves.extend(after_graces[0].select_leaves())
                leaves.extend(group)
                octavation_spanner = spannertools.OctavationSpanner(
                    start=octavation,
                    )
                octavation_spanner._contiguity_constraint = None
                attach(octavation_spanner, leaves)

    def apply_piano_clefs_and_octavations(self):
        def cleanup(staff, current_clef=None):
            leaves = list(iterate(staff).by_class(scoretools.Leaf))
            groups = list(iterate(leaves).by_run(
                (scoretools.Note, scoretools.Chord)))
            for group in groups:
                pitches = pitchtools.PitchSegment.from_selection(group)
                average = int(sum(float(x) for x in pitches) / len(pitches))
                average = pitchtools.NamedPitch(average)
                octavation = None
                if pitchtools.NamedPitch('C4') <= average:
                    clef = Clef('treble')
                    if NamedPitch('B5') < average:
                        octavation = 1
                    if NamedPitch('B6') < average:
                        octavation = 2
                else:
                    clef = Clef('bass')
                    if average < NamedPitch('D2'):
                        octavation = -1
                    if average < NamedPitch('D1'):
                        octavation = -2
                head = group[0]
                leaf_to_attach_to = head
                previous_leaf = inspect_(head).get_leaf(-1)
                if previous_leaf is not None:
                    inspector = inspect_(previous_leaf)
                    after_graces = inspector.get_grace_containers('after')
                    if after_graces:
                        grace_leaves = after_graces[0].select_leaves()
                        leaf_to_attach_to = grace_leaves[0]
                if current_clef != clef:
                    try:
                        command = indicatortools.LilyPondCommand(
                            'clef {}'.format(clef.name))
                        attach(command, leaf_to_attach_to)
                    except ValueError:
                        pass
                    current_clef = clef
                if octavation is not None:
                    leaves = []
                    if previous_leaf is not None:
                        if after_graces:
                            leaves.extend(after_graces[0].select_leaves())
                    leaves.extend(group)
                    octavation_spanner = spannertools.OctavationSpanner(
                        start=octavation,
                        )
                    octavation_spanner._contiguity_constraint = None
                    attach(octavation_spanner, leaves)
        message = '\tapplying piano clefs and octavations'
        print(message)
        upper_staff = self.score['Piano Upper Staff']
        lower_staff = self.score['Piano Lower Staff']
        if self.segment_id == '1':
            attach(Clef('treble'), upper_staff)
            attach(Clef('bass'), lower_staff)
            cleanup(upper_staff, current_clef=Clef('treble'))
            cleanup(lower_staff, current_clef=Clef('bass'))
        else:
            cleanup(upper_staff)
            cleanup(lower_staff)

    def apply_pitches(self):
        from plague_water import makers
        message = '\tapplying pitch classes'
        with systemtools.ProgressIndicator(message) as progress_indicator:
            for leaf in iterate(self.score).by_timeline(Note):
                logical_tie = inspect_(leaf).get_logical_tie()
                if leaf is not logical_tie.head:
                    continue
                music_maker = inspect_(leaf).get_effective(makers.MusicMaker)
                pitch_agent = music_maker.pitch_agent
                if pitch_agent is None:
                    continue
                previous_pitch_set = None
                previous_leaf = inspect_(logical_tie.head).get_leaf(-1)
                if isinstance(previous_leaf, scoretools.Note):
                    previous_pitch_set = pitchtools.PitchSet(
                        [previous_leaf.written_pitch])
                elif isinstance(previous_leaf, scoretools.Chord):
                    previous_pitch_set = pitchtools.PitchSet(
                        previous_leaf.written_pitches)
                grace = ()
                if previous_leaf is not None:
                    inspector = inspect_(previous_leaf)
                    grace = inspector.get_grace_containers('after')
                inspector = inspect_(logical_tie.head)
                grace = grace or inspector.get_grace_containers('grace')
                logical_ties = []
                if grace:
                    iterator = iterate(grace[0]).by_logical_tie(pitched=True)
                    logical_ties.extend([x for x in iterator])
                logical_ties.append(logical_tie)
                for logical_tie in logical_ties:
                    previous_pitch_set = pitch_agent(
                        logical_tie=logical_tie,
                        previous_pitch_set=previous_pitch_set,
                        segment_duration=self.segment_duration,
                        )
                progress_indicator.advance()

    def apply_registers(self):
        message = '\tapplying registers'
        with systemtools.ProgressIndicator(message) as progress_indicator:
            for music, music_maker in \
                self.iterate_containers_and_music_makers():
                assert inspect_(music).get_duration(), music
                register_agent = music_maker.register_agent
                if register_agent is None:
                    continue
                register_agent(
                    music=music,
                    segment_duration=self.segment_duration,
                    )
                progress_indicator.advance()

    def apply_spanners(self):
        message = '\tapplying spanners'
        music_maker_seeds = collections.Counter()
        with systemtools.ProgressIndicator(message) as progress_indicator:
            for music, music_maker in \
                self.iterate_containers_and_music_makers():
                seed = music_maker_seeds[music_maker]
                spanner_agent = music_maker.spanner_agent
                if spanner_agent is None:
                    continue
                spanner_agent(
                    music=music,
                    seed=seed,
                    segment_duration=self.segment_duration,
                    )
                music_maker_seeds[music_maker] += 1
                progress_indicator.advance()

    def build_and_persist(self, current_file_path):
        print('Building {}'.format(self.segment_name))
        with systemtools.Timer() as timer:
            current_directory_path = os.path.dirname(os.path.abspath(
                os.path.expanduser(current_file_path)))
            pdf_file_path = os.path.join(
                current_directory_path,
                'output.pdf',
                )
            lilypond_file = self()
            persist(lilypond_file).as_pdf(
                pdf_file_path=pdf_file_path,
                remove_ly=False,
                )
            print('\tfinished in {} seconds'.format(
                timer.elapsed_time))

    def cleanup_semantic_timespans(self):
        print('\tcleaning up semantic timespans')
        split_offsets = []
        if self.measure_segmentation_talea:
            groups = sequencetools.partition_sequence_by_counts(
                self.time_signatures,
                self.measure_segmentation_talea,
                cyclic=True,
                overhang=True,
                )
            current_offset = Offset(0)
            for group in groups:
                current_offset += sum(x.duration for x in group)
                split_offsets.append(current_offset)
        for context_maker in self.context_makers:
            if context_maker.context_dependencies:
                continue
            context_maker.cleanup_timespans(
                split_offsets=split_offsets,
                )

    def cleanup_silences(self):
        from plague_water import makers
        from plague_water import materials
        message = '\tcleaning up silences'
        print(message)
        with systemtools.ForbidUpdate(self.score):
            for voice in iterate(self.score).by_class(Voice):
                for music in voice:
                    music_maker = \
                        inspect_(music).get_indicator(makers.MusicMaker)
                    if music_maker != materials.silent_music_maker:
                        continue
                    elif isinstance(music_maker.timespan_agent,
                        makers.DependentTimespanAgent,
                        ):
                        continue
                    parts, starts_at_bar_line, stops_at_bar_line = \
                        self._partition_music_durations(music)
                    music[:] = self._make_silent_divisions(
                        parts,
                        inspect_(music).get_timespan().start_offset,
                        starts_at_bar_line=starts_at_bar_line,
                        stops_at_bar_line=stops_at_bar_line,
                        )
                    leaves = list(music.select_leaves())
                    prototype = (scoretools.MultimeasureRest,)
                    if voice.name != 'Piano Pedals':
                        for group in iterate(leaves).by_run(prototype):
                            spanner = spannertools.StaffLinesSpanner(
                                lines=1,
                                )
                            attach(spanner, group)

    def color_piano_conflicts(self):
        message = '\tcoloring piano conflicts'
        with systemtools.ProgressIndicator(message) as progress_indicator:
            component = self.score['Piano Staff Group']
            for vertical_moment in iterate(component).by_vertical_moment():
                pitch_numbers = collections.Counter()
                notes_and_chords = vertical_moment.notes_and_chords
                for note_or_chord in notes_and_chords:
                    if isinstance(note_or_chord, scoretools.Note):
                        pitch_number = note_or_chord.written_pitch.pitch_number
                        pitch_number = float(pitch_number)
                        pitch_numbers[pitch_number] += 1
                    else:
                        for pitch in note_or_chord.written_pitches:
                            pitch_number = pitch.pitch_number
                            pitch_number = float(pitch_number)
                            pitch_numbers[pitch_number] += 1
                conflict_pitch_numbers = set()
                for pitch_number, count in pitch_numbers.iteritems():
                    if 1 < count:
                        conflict_pitch_numbers.add(pitch_number)
                if not conflict_pitch_numbers:
                    continue
                for note_or_chord in notes_and_chords:
                    if isinstance(note_or_chord, scoretools.Note):
                        pitch_number = note_or_chord.written_pitch.pitch_number
                        pitch_number = float(pitch_number)
                        if pitch_number in conflict_pitch_numbers:
                            note_or_chord.note_head.tweak.color = 'red'
                            progress_indicator.advance()
                    else:
                        for note_head in note_or_chord.note_heads:
                            pitch_number = note_head.written_pitch.pitch_number
                            pitch_number = float(pitch_number)
                            if pitch_number in conflict_pitch_numbers:
                                note_head.tweak.color = 'red'
                                progress_indicator.advance()

    def configure_lilypond_file(self):
        print('\tconfiguring lilypond file')
        lilypond_file = lilypondfiletools.LilyPondFile()
        lilypond_file.use_relative_includes = True
        score_block = lilypondfiletools.Block(name='score')
        score_block.items.append(self.score)
        lilypond_file.items.append(score_block)
        for file_path in plague_water_configuration.stylesheets_file_paths:
            if 'parts' in file_path:
                continue
            file_name = os.path.split(file_path)[-1]
            relative_file_path = os.path.join(
                '..', '..', 'stylesheets',
                file_name,
                )
            lilypond_file.file_initial_user_includes.append(relative_file_path)
        lilypond_file.file_initial_system_comments[:] = []
        self.lilypond_file = lilypond_file

    def configure_score(self):
        print('\tconfiguring score')
        override(self.score).horizontal_bracket.color = 'red'
        rehearsal_mark_text = 'mark \\markup {{ ' \
            "\\override #'(box-padding . 0.5) " \
            '\\box {} }}'
        rehearsal_mark_text = rehearsal_mark_text.format(
            self.segment_id.upper(),
            )
        rehearsal_mark = indicatortools.LilyPondCommand(rehearsal_mark_text)
        attach(rehearsal_mark, self.score['TimeSignatureContext'][0],
            scope=scoretools.Context)
        attach(self.segment_tempo, self.score['TimeSignatureContext'][0])
        if self.is_final_segment:
            right_column = markuptools.MarkupCommand(
                'right-column', [
                    ' ',
                    ' ',
                    ' ',
                    'Jamaica Plain',
                    'December 2013 - February 2014',
                    ],
                )
            italic = markuptools.MarkupCommand(
                'italic',
                right_column,
                )
            final_markup = Markup(italic, 'down')
            self.score.add_final_markup(final_markup)
            self.score.add_final_bar_line()
        else:
            self.score.add_final_bar_line('||')

    def create_dependent_timespans(self):
        print('\tcreating dependent timespans')
        from plague_water import makers
        ordered_context_makers = makers.ContextMaker.order_by_dependencies(
            self.context_makers)
        for context_maker in ordered_context_makers:
            if context_maker.context_dependencies:
                dependencies = [x for x in self.context_makers
                    if x.context_name in context_maker.context_dependencies
                    ]
                context_maker.create_timespans(
                    self.target_segment_duration,
                    context_map=self.context_map,
                    dependencies=dependencies,
                    )

    def create_semantic_timespans(self):
        print('\tcreating semantic timespans')
        from plague_water import makers
        ordered_context_makers = makers.ContextMaker.order_by_dependencies(
            self.context_makers)
        for context_maker in ordered_context_makers:
            if context_maker.context_dependencies:
                continue
            context_maker.create_timespans(
                self.target_segment_duration,
                context_map=self.context_map,
                )

    def create_silent_timespans(self):
        print('\tcreating silent timespans')
        for context_maker in self.context_makers:
            context_maker.create_silent_timespans(
                segment_duration=self.segment_duration,
                time_signatures=self.time_signatures,
                )

    def find_meters(self):
        print('\tfinding meters')
        offset_counter = datastructuretools.TypedCounter(
            item_class=Offset,
            )
        for context_maker in self.context_makers:
            for timespan in context_maker.timespan_inventory:
                offset_counter[timespan.start_offset] += 1
                offset_counter[timespan.stop_offset] += 1
        if not offset_counter:
            offset_counter[self.target_segment_duration] += 1
        meters = metertools.Meter.fit_meters_to_expr(
            offset_counter,
            self.permitted_time_signatures,
            maximum_repetitions=2,
            )
        return meters

    def fix_grace_spanners(self):
        message = '\tfixing grace spanners'
        with systemtools.ProgressIndicator(message) as progress_indicator:
            for leaf in iterate(self.score).by_class(scoretools.Leaf):
                grace_containers = inspect_(leaf).get_grace_containers('after')
                if not grace_containers:
                    continue
                assert len(grace_containers) == 1
                grace_container = grace_containers[0]
                next_leaf = inspect_(leaf).get_leaf(1)
                assert next_leaf is not None
                grace_notes = list(grace_container.select_leaves())
                assert len(grace_notes), (grace_notes, grace_container)
                slur_notes = grace_notes + [next_leaf]
                phrasing_slur = spannertools.PhrasingSlur()
                phrasing_slur._contiguity_constraint = None
                attach(phrasing_slur, slur_notes)
                if 1 < len(grace_notes):
                    beams = inspect_(grace_notes[0]).get_spanners(Beam)
                    if not beams:
                        beam = Beam()
                        override(beam).beam.positions = schemetools.Scheme(
                            'beam::place-broken-parts-individually')
                        attach(beam, grace_notes)
                progress_indicator.advance()

    def fix_guero_glissandi(self):
        message = '\tfixing guero glissandi'
        contexts = select(
            self.score['Piano Upper Staff'],
            self.score['Piano Lower Staff'],
            )
        with systemtools.ProgressIndicator(message) as progress_indicator:
            glissandi = set()
            for leaf in iterate(contexts).by_class(scoretools.Leaf):
                spanners = inspect_(leaf).get_spanners(Glissando)
                if spanners:
                    assert len(spanners) == 1
                    glissandi.update(spanners)
            for glissando in glissandi:
                pitches = [x.written_pitch for x in glissando]
                minimum = min(pitches)
                maximum = max(pitches)
                width = abs((maximum - minimum).semitones)
                if 8 < width:
                    continue
                pitch_range = inspect_(glissando[0]).get_effective(
                    pitchtools.PitchRange)
                for leaf_one, leaf_two in sequencetools.iterate_sequence_nwise(
                    glissando[:]):
                    pitch_one = leaf_one.written_pitch
                    pitch_two = leaf_two.written_pitch
                    interval = pitch_one - pitch_two
                    semitones = interval.semitones
                    sign = mathtools.sign(semitones)
                    if 8 < abs(semitones):
                        continue
                    if sign == 0:
                        sign = 1
                    distance = 8 * sign
                    new_pitch_two = pitch_one.transpose(distance)
                    if new_pitch_two not in pitch_range:
                        sign *= -1
                        distance = 8 * sign
                        new_pitch_two = pitch_one.transpose(distance)
                    leaf_two.written_pitch = new_pitch_two
                pitches = [x.written_pitch for x in glissando]
                progress_indicator.advance()

    def get_initial_offset_and_meter_at_offset(self, offset):
        current_meters = list(self.meters)
        current_meter_offsets = list(self.measure_offsets)
        while 2 < len(current_meters) and \
            current_meter_offsets[1] < offset:
            current_meter_offsets.pop(0)
            current_meters.pop(0)
        if current_meter_offsets[1] <= offset:
            current_meter_offsets.pop(0)
            current_meters.pop(0)
        meter = current_meters[0]
        meter_offset = current_meter_offsets[0]
        initial_offset = \
            offset - meter_offset
        return initial_offset, meter

    @staticmethod
    def get_segment_target_duration(
        denominator=None,
        numerator=None,
        tempo=None,
        total_duration_in_seconds=None,
        ):
        segment_target_duration_in_seconds = Duration(
            total_duration_in_seconds * numerator,
            denominator,
            )
        tempo_duration_in_seconds = Duration(
            tempo.duration_to_milliseconds(tempo.duration),
            1000,
            )
        target_segment_duration = Duration((
            segment_target_duration_in_seconds / tempo_duration_in_seconds
            ).limit_denominator(16))
        target_segment_duration *= tempo.duration
        return target_segment_duration

    def iterate_containers_and_music_makers(self):
        from plague_water import makers
        for voice in iterate(self.score).by_class(Voice):
            for container in voice:
                music_maker = \
                    inspect_(container).get_effective(makers.MusicMaker)
                yield container, music_maker

    @staticmethod
    def iterate_music_and_meters(
        initial_offset=None,
        meters=None,
        music=None,
        ):
        assert isinstance(initial_offset, Offset) and 0 <= initial_offset
        assert all(isinstance(x, metertools.Meter) for x in meters)
        assert len(meters)
        current_meters = list(meters)
        current_meter_offsets = list(mathtools.cumulative_sums(
            x.implied_time_signature.duration for x in meters))
        for container in music[:]:
            timespan = inspect_(container).get_timespan()
            container_start_offset = timespan.start_offset + initial_offset
            while 2 < len(current_meter_offsets) and \
                current_meter_offsets[1] <= container_start_offset:
                current_meter_offsets.pop(0)
                current_meters.pop(0)
            current_meter = current_meters[0]
            current_meter_offset = current_meter_offsets[0]
            current_initial_offset = \
                container_start_offset - current_meter_offset
            yield container, current_meter, current_initial_offset

    def populate_rhythms(
        self,
        rewrite_meter=True,
        ):
        print('\tcreating rhythms')
        seed = 0
        for context_maker in self.context_makers:
            context_name = context_maker.context_name
            timespan_inventory = context_maker.timespan_inventory
            realization, seed = self.populate_rhythms_for_one_voice(
                context_map=self.context_map,
                context_name=context_name,
                rewrite_meter=rewrite_meter,
                seed=seed,
                timespan_inventory=timespan_inventory,
                )
            self.score[context_name].extend(realization)

    def populate_rhythms_for_one_voice(
        self,
        context_name=None,
        context_map=None,
        rewrite_meter=True,
        seed=0,
        timespan_inventory=None,
        ):
        from plague_water import materials
        result = []
        message = '\t\t{}'.format(context_name)
        with systemtools.ProgressIndicator(message) as progress_indicator:
            change_staff_lines = True
            previous_silence = Container()
            attach(materials.silent_music_maker, previous_silence)
            for music_maker, timespans in itertools.groupby(
                timespan_inventory,
                lambda x: x.music_maker,
                ):
                timespans = timespantools.TimespanInventory(timespans)
                durations = [x.duration for x in timespans]
                start_offset = timespans[0].start_offset
                leading_silence, music, tailing_silence = \
                    music_maker.create_rhythms(
                        durations,
                        change_staff_lines=change_staff_lines,
                        initial_offset=start_offset,
                        meter_cache=self.cached_meters,
                        meters=self.meters,
                        rewrite_meter=rewrite_meter,
                        seed=seed,
                        )
                attach(music_maker, music, scope=scoretools.Context)
                previous_silence.extend(leading_silence)
                if not len(music.select_leaves()):
                    previous_silence.extend(tailing_silence)
                else:
                    if len(previous_silence.select_leaves()):
                        result.append(previous_silence)
                    result.append(music)
                    previous_silence = tailing_silence
                    attach(materials.silent_music_maker, previous_silence)
                seed += 1
                progress_indicator.advance()
            if len(previous_silence.select_leaves()):
                result.append(previous_silence)
                attach(materials.silent_music_maker, previous_silence)
        return result, seed

    def populate_time_signature_context(self):
        print('\tpopulating time signature context')
        measures = scoretools.make_spacer_skip_measures(
            self.time_signatures)
        self.score['TimeSignatureContext'].extend(measures)

    @staticmethod
    def remap_sequence(sequence, range_pairs):
        result = []
        for old_element in sequence:
            new_element = old_element
            for input_range, output_range in range_pairs:
                input_low, input_high = input_range
                if input_low <= old_element <= input_high:
                    output_low, output_high = output_range
                    output_difference = output_high - output_low
                    new_element -= input_low
                    new_element %= (output_difference + 1)
                    new_element += output_low
            result.append(new_element)
        return type(sequence)(result)

    def remove_empty_trailing_measures(self):
        print('\tremoving empty trailing measures')
        measure_start_offsets = mathtools.cumulative_sums(
            time_signature.duration
            for time_signature in self.time_signatures
            )[:-1]
        meters = list(self.meters)
        time_signatures = list(self.time_signatures)
        timespan_inventories = [
            context_maker.timespan_inventory
            for context_maker in self.context_makers
            if context_maker.timespan_inventory
            ]
        maximum_performed_offset = max(
            timespan_inventory.stop_offset
            for timespan_inventory in timespan_inventories
            )
        while maximum_performed_offset <= measure_start_offsets[-1]:
            measure_start_offsets.pop()
            meters.pop()
            time_signatures.pop()
        self.meters = tuple(meters)
        self.time_signatures = tuple(time_signatures)
        self.segment_duration = sum(
            time_signature.duration
            for time_signature in self.time_signatures
            )

    def remove_percussion_overlap(self):
        print('\tremoving percussion overlap')
        context_names = (
            'Percussion Shaker Voice',
            'Percussion Woodblock Voice',
            'Percussion Drum Voice',
            )
        aggregate_inventory = timespantools.TimespanInventory()
        percussion_context_makers = {}
        for context_maker in self.context_makers:
            if context_maker.context_name in context_names:
                context_name = context_maker.context_name
                percussion_context_makers[context_name] = context_maker
                aggregate_inventory.extend(context_maker.timespan_inventory)
        overlap_mapping = aggregate_inventory.compute_overlap_factor_mapping()
        for timespan, overlap in overlap_mapping.items():
            if overlap < 3:
                continue
            time_relation = timespantools.offset_happens_during_timespan(
                offset=timespan.start_offset)
            timespans = \
                aggregate_inventory.get_timespans_that_satisfy_time_relation(
                    time_relation=time_relation,
                    )
            timespans.sort(key=lambda x: x.duration)
            timespan, context_name = timespans[0], timespans[0].context_name
            context_maker = percussion_context_makers[context_name]
            aggregate_inventory.remove(timespans[0])
            context_maker.timespan_inventory.remove(timespan)

    ### PUBLIC PROPERTIES ###

    @property
    def measure_offsets(self):
        measure_durations = [x.duration for x in self.time_signatures]
        measure_offsets = mathtools.cumulative_sums(measure_durations)
        return measure_offsets