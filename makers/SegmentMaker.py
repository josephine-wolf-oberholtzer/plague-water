#-*- encoding: utf-8 -*-
import collections
import itertools
import os
import sys
from abjad import *
from plague_water import plague_water_configuration
from plague_water import score_templates
from plague_water.makers.Maker import Maker


class SegmentMaker(Maker):

    ### SLOTS ###

    __slots__ = (
        'cached_makers',
        'cached_meters',
        'context_map',
        'guitar_brush',
        'guitar_lifeline_strategy',
        'guitar_pedal_timespans',
        'guitar_timespans',
        'is_final_segment',
        'lilypond_file',
        'measure_segmentation_talea',
        'meters',
        'percussion_lh_brush',
        'percussion_lh_timespans',
        'percussion_rh_brush',
        'percussion_rh_timespans',
        'permitted_time_signatures',
        'piano_lh_brush',
        'piano_lh_timespans',
        'piano_lifeline_strategy',
        'piano_pedal_timespans',
        'piano_rh_brush',
        'piano_rh_timespans',
        'saxophone_brush',
        'saxophone_timespans',
        'score',
        'segment_duration',
        'segment_name',
        'segment_id',
        'target_segment_duration',
        'segment_tempo',
        'time_signatures',
        )

    ### INITIALIZER ###

    def __init__(
        self,
        context_map=None,
        guitar_brush=None,
        guitar_lifeline_strategy=None,
        is_final_segment=None,
        measure_segmentation_talea=None,
        percussion_lh_brush=None,
        percussion_rh_brush=None,
        permitted_time_signatures=None,
        piano_lh_brush=None,
        piano_lifeline_strategy=None,
        piano_rh_brush=None,
        saxophone_brush=None,
        segment_id=None,
        segment_name=None,
        target_segment_duration=None,
        segment_tempo=None,
        ):
        self._prepare(
            allow_none_as_sentinel=True,
            context_map=context_map,
            guitar_brush=guitar_brush,
            guitar_lifeline_strategy=guitar_lifeline_strategy,
            is_final_segment=is_final_segment,
            measure_segmentation_talea=measure_segmentation_talea,
            percussion_lh_brush=percussion_lh_brush,
            percussion_rh_brush=percussion_rh_brush,
            permitted_time_signatures=permitted_time_signatures,
            piano_lh_brush=piano_lh_brush,
            piano_lifeline_strategy=piano_lifeline_strategy,
            piano_rh_brush=piano_rh_brush,
            saxophone_brush=saxophone_brush,
            segment_id=segment_id,
            segment_name=segment_name,
            target_segment_duration=target_segment_duration,
            segment_tempo=segment_tempo,
            )

    ### SPECIAL METHODS ###

    def __call__(self, current_file_path=None):
        ### VALIDATE AND SETUP ###
        self._prepare(
            allow_none_as_sentinel=False,
            context_map=self.context_map,
            guitar_brush=self.guitar_brush,
            guitar_lifeline_strategy=self.guitar_lifeline_strategy,
            is_final_segment=self.is_final_segment,
            measure_segmentation_talea=self.measure_segmentation_talea,
            percussion_lh_brush=self.percussion_lh_brush,
            percussion_rh_brush=self.percussion_rh_brush,
            permitted_time_signatures=self.permitted_time_signatures,
            piano_lh_brush=self.piano_lh_brush,
            piano_lifeline_strategy=self.piano_lifeline_strategy,
            piano_rh_brush=self.piano_rh_brush,
            saxophone_brush=self.saxophone_brush,
            segment_id=self.segment_id,
            segment_name=self.segment_name,
            target_segment_duration=self.target_segment_duration,
            segment_tempo=self.segment_tempo,
            )
        template = score_templates.PlagueWaterScoreTemplate()
        self.score = template()

        ### BUILD TIMESPAN STRUCTURES ###
        self.build_semantic_voice_timespan_inventories()
        self.meters = self.find_meters()
        self.time_signatures = tuple(meter.implied_time_signature
            for meter in self.meters)
        self.segment_duration = sum(time_signature.duration
            for time_signature in self.time_signatures)
        self.cleanup_semantic_voice_timespan_inventories()
        self.build_lifeline_timespan_inventories()
        self.remove_empty_trailing_measures()
        self.build_silence_timespans()

        ### CREATE NOTATION ###
        self.populate_time_signature_context()
        self.create_rhythms(rewrite_meter=True)
        self.apply_pitch_classes()
        self.apply_registrations()
        self.apply_chords()
        # self.apply_piano_staff_changes()
        self.color_piano_conflicts()
        self.apply_articulations()
        self.apply_dynamics()
        self.apply_spanners()

        ### APPLY LAYOUT ###
        self.configure_score()
        assert inspect_(self.score).is_well_formed()
        self.configure_lilypond_file()
        return self.lilypond_file

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

    def _prepare(
        self,
        allow_none_as_sentinel=False,
        context_map=None,
        guitar_brush=None,
        guitar_lifeline_strategy=None,
        is_final_segment=True,
        measure_segmentation_talea=None,
        percussion_lh_brush=None,
        percussion_rh_brush=None,
        permitted_time_signatures=None,
        piano_lh_brush=None,
        piano_lifeline_strategy=None,
        piano_rh_brush=None,
        saxophone_brush=None,
        segment_id=None,
        segment_name=None,
        target_segment_duration=None,
        segment_tempo=None,
        ):
        from plague_water import makers
        ### BRUSHES ###
        brush_prototype = (makers.Brush, type(None))
        lifeline_prototype = (makers.LifelineStrategy, type(None))
        assert isinstance(guitar_brush, brush_prototype)
        assert isinstance(guitar_lifeline_strategy, lifeline_prototype)
        assert isinstance(percussion_lh_brush, brush_prototype)
        assert isinstance(percussion_rh_brush, brush_prototype)
        assert isinstance(piano_lh_brush, brush_prototype)
        assert isinstance(piano_lifeline_strategy, lifeline_prototype)
        assert isinstance(piano_rh_brush, brush_prototype)
        assert isinstance(saxophone_brush, brush_prototype)
        if not allow_none_as_sentinel:
            brushes = (
                guitar_brush,
                percussion_lh_brush,
                percussion_rh_brush,
                piano_lh_brush,
                piano_rh_brush,
                saxophone_brush,
                )
            assert any(brushes)
        ### OTHER ###
        assert isinstance(context_map, datastructuretools.ContextMap)
        permitted_time_signatures = indicatortools.TimeSignatureInventory(
            permitted_time_signatures)
        assert len(permitted_time_signatures)
        segment_tempo = Tempo(segment_tempo)
        measure_segmentation_talea = measure_segmentation_talea or (1,)
        assert len(measure_segmentation_talea)
        assert sequencetools.all_are_positive_integers(
            measure_segmentation_talea)
        if target_segment_duration is not None:
            target_segment_duration = Duration(target_segment_duration)
            assert 0 < target_segment_duration
        ### APPLY ###
        self.context_map = context_map
        self.guitar_brush = guitar_brush
        self.guitar_lifeline_strategy = guitar_lifeline_strategy
        self.is_final_segment = is_final_segment
        self.measure_segmentation_talea = measure_segmentation_talea
        self.percussion_lh_brush = percussion_lh_brush
        self.percussion_rh_brush = percussion_rh_brush
        self.permitted_time_signatures = permitted_time_signatures
        self.piano_lh_brush = piano_lh_brush
        self.piano_lifeline_strategy = piano_lifeline_strategy
        self.piano_rh_brush = piano_rh_brush
        self.saxophone_brush = saxophone_brush
        self.segment_id = str(segment_id)
        self.segment_name = segment_name
        self.target_segment_duration = target_segment_duration
        self.segment_tempo = segment_tempo
        self.cached_makers = {}
        self.cached_meters = {}
        self.lilypond_file = None
        self.meters = None
        self.score = None
        self.segment_duration = None
        self.time_signatures = None
        self.guitar_pedal_timespans = timespantools.TimespanInventory()
        self.guitar_timespans = timespantools.TimespanInventory()
        self.percussion_lh_timespans = timespantools.TimespanInventory()
        self.percussion_rh_timespans = timespantools.TimespanInventory()
        self.piano_lh_timespans = timespantools.TimespanInventory()
        self.piano_pedal_timespans = timespantools.TimespanInventory()
        self.piano_rh_timespans = timespantools.TimespanInventory()
        self.saxophone_timespans = timespantools.TimespanInventory()

    ### PUBLIC METHODS ###

    def apply_articulations(self):
        message = '\tapplying articulations'
        music_maker_seeds = collections.Counter()
        with systemtools.ProgressIndicator(message) as progress_indicator:
            for music, music_maker in \
                self.iterate_containers_and_music_makers():
                seed = music_maker_seeds[music_maker]
                music_maker.apply_articulations(
                    music=music,
                    seed=seed,
                    segment_duration=self.segment_duration,
                    )
                music_maker_seeds[music_maker] += 1
                progress_indicator.advance()

    def apply_chords(self):
        from plague_water import makers
        self.score._is_forbidden_to_update = True
        message = '\tapplying chords'
        with systemtools.ProgressIndicator(message) as progress_indicator:
            for leaf in iterate(self.score).by_timeline(Note):
                logical_tie = inspect_(leaf).get_logical_tie()
                if leaf is not logical_tie.head:
                    continue
                music_maker = inspect_(leaf).get_effective(makers.MusicMaker)
                music_maker.apply_chords(
                    logical_tie=logical_tie,
                    segment_duration=self.segment_duration,
                    )
                progress_indicator.advance()
        self.score._is_forbidden_to_update = False

    def apply_dynamics(self):
        message = '\tapplying dynamics'
        music_maker_seeds = collections.Counter()
        with systemtools.ProgressIndicator(message) as progress_indicator:
            for music, music_maker in \
                self.iterate_containers_and_music_makers():
                seed = music_maker_seeds[music_maker]
                music_maker.apply_dynamics(
                    music=music,
                    seed=seed,
                    segment_duration=self.segment_duration,
                    )
                music_maker_seeds[music_maker] += 1
                progress_indicator.advance()

    def apply_pitch_classes(self):
        from plague_water import makers
        message = '\tapplying pitch classes'
        with systemtools.ProgressIndicator(message) as progress_indicator:
            for leaf in iterate(self.score).by_timeline(Note):
                logical_tie = inspect_(leaf).get_logical_tie()
                if leaf is not logical_tie.head:
                    continue
                music_maker = inspect_(leaf).get_effective(makers.MusicMaker)
                music_maker.apply_pitch_classes(
                    logical_tie=logical_tie,
                    segment_duration=self.segment_duration,
                    )
                progress_indicator.advance()

    def apply_registrations(self):
        message = '\tapplying registrations'
        with systemtools.ProgressIndicator(message) as progress_indicator:
            for music, music_maker in \
                self.iterate_containers_and_music_makers():
                music_maker.apply_registrations(
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
                music_maker.apply_spanners(
                    music=music,
                    seed=seed,
                    segment_duration=self.segment_duration,
                    )
                music_maker_seeds[music_maker] += 1
                progress_indicator.advance()

    def apply_piano_staff_changes(self):
        message = '\tapplying piano staff changes'
        with systemtools.ProgressIndicator(message) as progress_indicator:
            piano_rh_voice = self.score['Piano RH Voice']
            piano_lh_voice = self.score['Piano LH Voice']
            piano_upper_staff = self.score['Piano Upper Staff']
            piano_lower_staff = self.score['Piano Lower Staff']
            old_piano_rh_staff = None
            rh_iterator = iterate(piano_rh_voice).by_logical_tie(pitched=True)
            for logical_tie in rh_iterator:
                if isinstance(logical_tie[0], scoretools.Note):
                    written_pitches = [logical_tie[0].written_pitch]
                else:
                    written_pitches = logical_tie[0].written_pitches
                pitch_numbers = [float(x) for x in written_pitches]
                pitch_center = sum(pitch_numbers) / len(pitch_numbers)
                if 0 < pitch_center:
                    new_piano_rh_staff = piano_upper_staff
                else:
                    new_piano_rh_staff = piano_lower_staff
                if new_piano_rh_staff != old_piano_rh_staff:
                    staff_change = indicatortools.StaffChange(
                        staff=new_piano_rh_staff,
                        )
                    attach(staff_change, logical_tie[0], scope=Voice)
                    old_piano_rh_staff = new_piano_rh_staff
                    progress_indicator.advance()
            old_piano_lh_staff = None
            lh_iterator = iterate(piano_lh_voice).by_logical_tie(pitched=True)
            for logical_tie in lh_iterator:
                if isinstance(logical_tie[0], scoretools.Note):
                    written_pitches = [logical_tie[0].written_pitch]
                else:
                    written_pitches = logical_tie[0].written_pitches
                pitch_numbers = [float(x) for x in written_pitches]
                pitch_center = sum(pitch_numbers) / len(pitch_numbers)
                if 0 < pitch_center:
                    new_piano_lh_staff = piano_upper_staff
                else:
                    new_piano_lh_staff = piano_lower_staff
                if new_piano_lh_staff != old_piano_lh_staff:
                    staff_change = indicatortools.StaffChange(
                        staff=new_piano_lh_staff,
                        )
                    attach(staff_change, logical_tie[0], scope=Voice)
                    old_piano_lh_staff = new_piano_lh_staff
                    progress_indicator.advance()

    def build_and_persist(self, current_file_path):
        print 'Building {}'.format(self.segment_name)
        with systemtools.Timer() as timer:
            current_directory_path = os.path.dirname(os.path.abspath(
                os.path.expanduser(current_file_path)))
            pdf_file_path = os.path.join(
                current_directory_path,
                'output.pdf',
                )
            ly_file_path = os.path.join(
                current_directory_path,
                'output.ly',
                )
            lilypond_file = self()
            should_persist = True
            if os.path.exists(ly_file_path):
                new_lilypond_string = format(lilypond_file)
                with open(ly_file_path, 'r') as f:
                    old_lilypond_string = f.read()
                if old_lilypond_string == new_lilypond_string:
                    should_persist = False
            if should_persist:
                persist(lilypond_file).as_pdf(
                    pdf_file_path=pdf_file_path,
                    remove_ly=False,
                    )
            print '\tfinished in {} seconds'.format(
                timer.elapsed_time)

    def build_lifeline_timespan_inventories(self):
        print '\tbuilding lifeline timespan inventories'
        if self.guitar_lifeline_strategy is not None:
            self.guitar_pedal_timespans = self.guitar_lifeline_strategy(
                self.guitar_timespans,
                self.target_segment_duration,
                )
        if self.piano_lifeline_strategy is not None:
            piano_timespans = timespantools.TimespanInventory()
            piano_timespans.extend(self.piano_lh_timespans)
            piano_timespans.extend(self.piano_rh_timespans)
            self.piano_pedal_timespans = self.piano_lifeline_strategy(
                piano_timespans,
                self.target_segment_duration,
                )

    def build_semantic_voice_timespan_inventories(self):
        print '\tbuilding semantic voice timespan inventories'
        for context_name in self.semantic_context_bundles:
            pair = self.semantic_context_bundles[context_name]
            brush, timespan_inventory = pair
            if brush is None:
                continue
            result = brush(
                context_map=self.context_map,
                context_name=context_name,
                target_segment_duration=self.target_segment_duration,
                )
            timespan_inventory[:] = result

    def build_silence_timespans(self):
        print '\tbuilding silence timespans'
        from plague_water import makers
        offsets = mathtools.cumulative_sums(
            x.duration for x in self.time_signatures)
        for context_name in self.all_context_bundles:
            message = '\t\t{}'.format(context_name)
            pair = self.all_context_bundles[context_name]
            brush, timespan_inventory = pair
            silence_timespan_inventory = timespantools.TimespanInventory()
            previous_stop_offset = Offset(0)
            with systemtools.ProgressIndicator(message) as progress_indicator:
                for timespan in timespan_inventory:
                    current_start_offset = timespan.start_offset
                    if previous_stop_offset < current_start_offset:
                        silence_timespan = timespantools.Timespan(
                            start_offset=previous_stop_offset,
                            stop_offset=current_start_offset,
                            )
                        silence_timespan_inventory.append(silence_timespan)
                    previous_stop_offset = timespan.stop_offset
                    progress_indicator.advance()
                if previous_stop_offset < self.segment_duration:
                    silence_timespan = timespantools.Timespan(
                        start_offset=previous_stop_offset,
                        stop_offset=self.segment_duration,
                        )
                    silence_timespan_inventory.append(silence_timespan)
                    progress_indicator.advance()
            fused_silence_timespans = timespantools.TimespanInventory()
            for group in silence_timespan_inventory.partition(
                include_tangent_timespans=True,
                ):
                fused_silence_timespan = timespantools.AnnotatedTimespan(
                    annotation=makers.MusicMaker(
                        rhythm_maker=rhythmmakertools.RestRhythmMaker(),
                        ),
                    start_offset=group.start_offset,
                    stop_offset=group.stop_offset,
                    )
                fused_silence_timespans.append(fused_silence_timespan)
            for shard in fused_silence_timespans.split_at_offsets(offsets):
                timespan_inventory.extend(shard)
            timespan_inventory.sort()

    def cleanup_semantic_voice_timespan_inventories(self):
        print '\tcleaning up timespan inventories'
        measure_segmentation_talea = self.measure_segmentation_talea
        if not self.measure_segmentation_talea:
            measure_segmentation_talea = (1,)
        current_offset = Offset(0)
        groups = sequencetools.partition_sequence_by_counts(
            self.time_signatures,
            measure_segmentation_talea,
            cyclic=True,
            overhang=True,
            )
        timespan_inventories = (
            self.guitar_timespans,
            self.percussion_lh_timespans,
            self.percussion_rh_timespans,
            self.piano_lh_timespans,
            self.piano_rh_timespans,
            self.saxophone_timespans,
            )
        for group in groups:
            current_offset += sum(x.duration for x in group)
            for timespan_inventory in timespan_inventories:
                if timespan_inventory is None:
                    continue
                new_timespan_inventory = \
                    timespantools.TimespanInventory()
                for shard in timespan_inventory.split_at_offset(
                    current_offset):
                    new_timespan_inventory.extend(shard)
                timespan_inventory[:] = new_timespan_inventory
        for timespan_inventory in timespan_inventories:
            if timespan_inventory is None:
                continue
            valid_timespans = []
            for timespan in timespan_inventory:
                music_maker = timespan.annotation
                if music_maker.timespan_has_minimum_length(timespan):
                    valid_timespans.append(timespan)
            timespan_inventory[:] = valid_timespans
            timespan_inventory.sort()

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
        print '\tconfiguring lilypond file'
        lilypond_file = lilypondfiletools.LilyPondFile()
        lilypond_file.use_relative_includes = True
        score_block = lilypondfiletools.Block(name='score')
        score_block.items.append(self.score)
        lilypond_file.items.append(score_block)
        for file_path in plague_water_configuration.stylesheets_file_paths:
            file_name = os.path.split(file_path)[-1]
            relative_file_path = os.path.join(
                '..', '..', 'stylesheets',
                file_name,
                )
            lilypond_file.file_initial_user_includes.append(relative_file_path)
        lilypond_file.default_paper_size = '11x17', 'landscape'
        lilypond_file.global_staff_size = 14
        lilypond_file.file_initial_system_comments[:] = []
        self.lilypond_file = lilypond_file

    def configure_score(self):
        print '\tconfiguring score'
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

    def create_rhythms(
        self,
        rewrite_meter=True,
        ):
        print '\tcreating rhythms'
        seed = 0
        for context_name in self.all_context_bundles:
            brush, timespan_inventory = self.all_context_bundles[context_name]
            realization, seed = self.create_rhythms_for_one_voice(
                context_map=self.context_map,
                context_name=context_name,
                rewrite_meter=rewrite_meter,
                seed=seed,
                timespan_inventory=timespan_inventory,
                )
            self.score[context_name].extend(realization)

    def create_rhythms_for_one_voice(
        self,
        context_map=None,
        context_name=None,
        rewrite_meter=True,
        seed=0,
        timespan_inventory=None,
        ):
        result = []
        message = '\t\t{}'.format(context_name)
        with systemtools.ProgressIndicator(message) as progress_indicator:
            pairs = []
            music_maker = timespan_inventory[0].annotation
            timespans = [timespan_inventory[0]]
            for timespan in timespan_inventory[1:]:
                if timespan.annotation == music_maker:
                    timespans.append(timespan)
                else:
                    pair = (music_maker, tuple(timespans))
                    pairs.append(pair)
                    timespans = [timespan]
                    music_maker = timespan.annotation
            if timespans:
                pair = (music_maker, tuple(timespans))
                pairs.append(pair)
            for music_maker, timespans in pairs:
                contexted_music_maker = self.get_cached_maker(
                    music_maker,
                    context_map=context_map,
                    context_name=context_name,
                    )
                durations = [x.duration for x in timespans]
                start_offset = timespans[0].start_offset
                music = contexted_music_maker.create_rhythms(
                    durations,
                    initial_offset=start_offset,
                    meter_cache=self.cached_meters,
                    meters=self.meters,
                    rewrite_meter=rewrite_meter,
                    seed=seed,
                    )
                attach(music_maker, music, scope=Voice)
                seed += 1
                result.append(music)
                progress_indicator.advance()
        return result, seed

    def find_meters(self):
        print '\tfinding meters'
        offset_counter = datastructuretools.TypedCounter(
            item_class=Offset,
            )
        timespan_inventories = (
            self.guitar_timespans,
            self.percussion_lh_timespans,
            self.percussion_rh_timespans,
            self.piano_lh_timespans,
            self.piano_rh_timespans,
            self.saxophone_timespans,
            )
        for timespan_inventory in timespan_inventories:
            if timespan_inventory is None:
                continue
            for timespan in timespan_inventory:
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

    def get_cached_maker(self, maker, context_map, context_name):
        key = (maker, context_map, context_name)
        if key not in self.cached_makers:
            contexted_maker = maker.from_context_map(
                context_map=context_map,
                context_name=context_name,
                )
            self.cached_makers[key] = contexted_maker
        return self.cached_makers[key]

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

    def populate_time_signature_context(self):
        print '\tpopulating time signature context'
        measures = scoretools.make_spacer_skip_measures(
            self.time_signatures)
        self.score['TimeSignatureContext'].extend(measures)

    def remove_empty_trailing_measures(self):
        print '\tremoving empty trailing measures'
        measure_start_offsets = mathtools.cumulative_sums(
            time_signature.duration
            for time_signature in self.time_signatures
            )[:-1]
        meters = list(self.meters)
        time_signatures = list(self.time_signatures)
        maximum_performed_offset = max(
            timespan_inventory.stop_offset
            for timespan_inventory in self.all_timespan_inventories
            if len(timespan_inventory)
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

    ### PUBLIC PROPERTIES ###

    @property
    def all_context_bundles(self):
        bundles = self.parametric_context_bundles
        bundles.update(self.semantic_context_bundles)
        return bundles

    @property
    def all_timespan_inventories(self):
        result = []
        for context_name, pair in self.all_context_bundles.iteritems():
            result.append(pair[1])
        return result

    @property
    def parametric_context_bundles(self):
        bundles = {}
        bundles['Guitar Pedals'] = (
            self.guitar_lifeline_strategy,
            self.guitar_pedal_timespans,
            )
        bundles['Piano Pedals'] = (
            self.guitar_lifeline_strategy,
            self.piano_pedal_timespans,
            )
        return bundles

    @property
    def semantic_context_bundles(self):
        bundles = {}
        bundles['Guitar Voice'] = (
            self.guitar_brush,
            self.guitar_timespans,
            )
        bundles['Percussion LH Voice'] = (
            self.percussion_lh_brush,
            self.percussion_lh_timespans,
            )
        bundles['Percussion RH Voice'] = (
            self.percussion_rh_brush,
            self.percussion_rh_timespans,
            )
        bundles['Piano LH Voice'] = (
            self.piano_lh_brush,
            self.piano_lh_timespans,
            )
        bundles['Piano RH Voice'] = (
            self.piano_rh_brush,
            self.piano_rh_timespans,
            )
        bundles['Saxophone Voice'] = (
            self.saxophone_brush,
            self.saxophone_timespans,
            )
        return bundles
