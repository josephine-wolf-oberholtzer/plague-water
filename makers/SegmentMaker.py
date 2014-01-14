#-*- encoding: utf-8 -*-
import collections
import itertools
import os
from abjad import *
from plague_water import plague_water_configuration
from plague_water import score_templates


class SegmentMaker(abctools.AbjadObject):

    ### SLOTS ###

    __slots__ = (
        'context_map',
        'cached_makers',
        'cached_meters',
        'guitar_brush',
        'guitar_lifeline_strategy',
        'guitar_pedal_timespans',
        'guitar_timespans',
        'lilypond_file',
        'measure_segmentation_talea',
        'minimum_timespan_duration',
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
        'segment_actual_duration',
        'segment_target_duration',
        'segment_tempo',
        'time_signatures',
        'meters',
        )

    ### INITIALIZER ###

    def __init__(
        self,
        context_map=None,
        guitar_brush=None,
        guitar_lifeline_strategy=None,
        measure_segmentation_talea=None,
        minimum_timespan_duration=None,
        percussion_lh_brush=None,
        percussion_rh_brush=None,
        permitted_time_signatures=None,
        piano_lh_brush=None,
        piano_lifeline_strategy=None,
        piano_rh_brush=None,
        saxophone_brush=None,
        segment_target_duration=None,
        segment_tempo=None,
        ):
        from plague_water import makers
        # verify
        assert isinstance(context_map,
            (datastructuretools.ContextMap, type(None)))
        assert isinstance(guitar_brush, (makers.Brush, type(None)))
        assert isinstance(guitar_lifeline_strategy,
            (makers.LifelineStrategy, type(None)))
        if not sequencetools.all_are_positive_integers(
            measure_segmentation_talea):
            measure_segmentation_talea = (1,)
        if not isinstance(minimum_timespan_duration, Duration):
            minimum_timespan_duration = Duration(3, 16)
        assert Duration(0) < minimum_timespan_duration
        assert isinstance(percussion_lh_brush, (makers.Brush, type(None)))
        assert isinstance(percussion_rh_brush, (makers.Brush, type(None)))
        assert isinstance(permitted_time_signatures, collections.Iterable)
        assert len(permitted_time_signatures)
        if not all(isinstance(x, TimeSignature)
            for x in permitted_time_signatures):
            permitted_time_signatures = tuple(
                TimeSignature(x) for x in permitted_time_signatures)
        assert isinstance(piano_lh_brush, (makers.Brush, type(None)))
        assert isinstance(piano_lifeline_strategy,
            (makers.LifelineStrategy, type(None)))
        assert isinstance(piano_rh_brush, (makers.Brush, type(None)))
        assert isinstance(saxophone_brush, (makers.Brush, type(None)))
        assert isinstance(segment_target_duration, Duration)
        assert 1 <= segment_target_duration
        assert isinstance(segment_tempo, Tempo)
        # set inputs
        self.context_map = context_map
        self.guitar_brush = guitar_brush
        self.guitar_lifeline_strategy = guitar_lifeline_strategy
        self.measure_segmentation_talea = measure_segmentation_talea
        self.minimum_timespan_duration = minimum_timespan_duration
        self.percussion_lh_brush = percussion_lh_brush
        self.percussion_rh_brush = percussion_rh_brush
        self.permitted_time_signatures = permitted_time_signatures
        self.piano_lh_brush = piano_lh_brush
        self.piano_lifeline_strategy = piano_lifeline_strategy
        self.piano_rh_brush = piano_rh_brush
        self.saxophone_brush = saxophone_brush
        self.segment_target_duration = segment_target_duration
        self.segment_tempo = segment_tempo
        # set place holders
        self.cached_makers = {}
        self.cached_meters = {}
        self.lilypond_file = None
        self.meters = None
        self.score = None
        self.segment_actual_duration = None
        self.time_signatures = None
        # set timespan inventories
        self.guitar_pedal_timespans = timespantools.TimespanInventory()
        self.guitar_timespans = timespantools.TimespanInventory()
        self.percussion_lh_timespans = timespantools.TimespanInventory()
        self.percussion_rh_timespans = timespantools.TimespanInventory()
        self.piano_lh_timespans = timespantools.TimespanInventory()
        self.piano_pedal_timespans = timespantools.TimespanInventory()
        self.piano_rh_timespans = timespantools.TimespanInventory()
        self.saxophone_timespans = timespantools.TimespanInventory()

    ### SPECIAL METHODS ###

    def __call__(self, current_file_path=None):
        template = score_templates.PlagueWaterScoreTemplate()
        self.score = template()
        self.build_semantic_voice_timespan_inventories()
        self.meters = self.find_meters()
        self.time_signatures = tuple(meter.implied_time_signature
            for meter in self.meters)
        self.segment_actual_duration = sum(time_signature.duration
            for time_signature in self.time_signatures)
        self.cleanup_timespan_inventories()
        self.build_lifeline_timespan_inventories()
        self.build_silence_timespans()
        self.populate_time_signature_context()
        self.populate_voice_contexts()
        self.configure_score()
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

    ### PUBLIC METHODS ###

    def build_and_persist(self, current_file_path):
        print 'build and persist'
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

    def build_lifeline_timespan_inventories(self):
        print 'build lifeline timespan inventories'
        if self.guitar_lifeline_strategy is not None:
            self.guitar_pedal_timespans = self.guitar_lifeline_strategy(
                self.guitar_timespans,
                self.segment_target_duration,
                )
        if self.piano_lifeline_strategy is not None:
            piano_timespans = timespantools.TimespanInventory()
            piano_timespans.extend(self.piano_lh_timespans)
            piano_timespans.extend(self.piano_rh_timespans)
            self.piano_pedal_timespans = self.piano_lifeline_strategy(
                piano_timespans,
                self.segment_target_duration,
                )

    def build_semantic_voice_timespan_inventories(self):
        print 'build semantic voice timespan inventories'
        for context_name in self.semantic_context_bundles:
            print '\t{}'.format(context_name)
            pair = self.semantic_context_bundles[context_name]
            brush, timespan_inventory = pair
            result = brush(
                context_map=self.context_map,
                context_name=context_name,
                segment_target_duration=self.segment_target_duration,
                )
            timespan_inventory[:] = result

    def build_silence_timespans(self):
        print 'build silence timespans'
        from plague_water import makers
        offsets = mathtools.cumulative_sums(
            x.duration for x in self.time_signatures)
        for context_name in self.all_context_bundles:
            print '\t{}'.format(context_name)
            pair = self.all_context_bundles[context_name]
            brush, timespan_inventory = pair
            silence_timespan_inventory = timespantools.TimespanInventory()
            previous_stop_offset = Offset(0)
            for timespan in timespan_inventory:
                current_start_offset = timespan.start_offset
                if previous_stop_offset < current_start_offset:
                    silence_timespan = makers.PayloadedTimespan(
                        start_offset=previous_stop_offset,
                        stop_offset=current_start_offset,
                        )
                    silence_timespan_inventory.append(silence_timespan)
                previous_stop_offset = timespan.stop_offset
            if previous_stop_offset < self.segment_actual_duration:
                silence_timespan = makers.PayloadedTimespan(
                    start_offset=previous_stop_offset,
                    stop_offset=self.segment_actual_duration,
                    )
                silence_timespan_inventory.append(silence_timespan)
            for shard in silence_timespan_inventory.split_at_offsets(offsets):
                timespan_inventory.extend(shard)
            timespan_inventory.sort()

    def cleanup_timespan_inventories(self):
        print 'cleanup timespan inventories'
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
            timespan_inventory[:] = [x for x in timespan_inventory
                if self.minimum_timespan_duration <= x.duration]

    def configure_lilypond_file(self):
        print 'configure lilypond file'
        lilypond_file = lilypondfiletools.LilyPondFile()
        score_block = lilypondfiletools.Block(name='score')
        score_block.items.append(self.score)
        lilypond_file.items.append(score_block)
        for file_path in plague_water_configuration.stylesheets_file_paths:
            lilypond_file.file_initial_user_includes.append(file_path)
        lilypond_file.default_paper_size = '11x17', 'landscape'
        lilypond_file.global_staff_size = 14
        self.lilypond_file = lilypond_file

    def configure_score(self):
        print 'configure score'
        override(self.score).horizontal_bracket.color = 'red'
        rehearsal_mark = indicatortools.LilyPondCommand(r'mark \default')
        attach(rehearsal_mark, self.score['TimeSignatureContext'][0],
            scope=scoretools.Context)
        attach(self.segment_tempo, self.score['TimeSignatureContext'][0])
        self.score.add_double_bar()
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

    def find_meters(self):
        print 'find meters'
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
            offset_counter[self.segment_target_duration] += 1
        meters = metertools.Meter.fit_meters_to_expr(
            offset_counter,
            self.permitted_time_signatures,
            )
        return meters

    def get_cached_maker(self, maker, context_map, context_name):
        key = (maker, context_map, context_name)
        if key not in self.cached_makers:
            parameter_map = maker._build_parameter_map(
                context_map=context_map,
                context_name=context_name,
                )
            contexted_maker = new(maker, **parameter_map)
            self.cached_makers[key] = contexted_maker
        return self.cached_makers[key]

    def make_rest_containers(self, durations):
        from plague_water import makers
        source_annotation = makers.SourceAnnotation()
        rest_maker = rhythmmakertools.RestRhythmMaker()
        rests = rest_maker(durations)
        rest_containers = [Container(x) for x in rests]
        music = Container(rest_containers)
        attach(source_annotation, music)
        return music

    def populate_voice_contexts(self):
        print 'populate voice contexts'
        seed = 0
        for context_name in self.all_context_bundles:
            print '\t{}'.format(context_name)
            brush, timespan_inventory = self.all_context_bundles[context_name]
            realization, seed = self.realize_timespans(
                context_map=self.context_map,
                context_name=context_name,
                seed=seed,
                timespan_inventory=timespan_inventory,
                )
            self.score[context_name].extend(realization)

    def populate_time_signature_context(self):
        print 'populate time signature context'
        measures = scoretools.make_spacer_skip_measures(
            self.time_signatures)
        self.score['TimeSignatureContext'].extend(measures)

    def realize_timespans(
        self,
        context_map=None,
        context_name=None,
        seed=0,
        timespan_inventory=None,
        ):
        from plague_water import makers
        result = []
        silence_source_annotation = makers.SourceAnnotation()
        silence_music_maker = makers.MusicMaker(
            rhythm_maker=rhythmmakertools.RestRhythmMaker(),
            )
        if timespan_inventory is None:
            durations = [x.duration for x in self.time_signatures]
            music = silence_music_maker(
                durations,
                beam_music=False,
                initial_offset=0,
                meter_cache=self.cached_meters,
                meters=self.meters,
                )
            attach(silence_source_annotation, music)
            result.append(music)
            return result
        for music_maker, group in itertools.groupby(
            timespan_inventory,
            lambda x: x.music_maker,
            ):
            group = timespantools.TimespanInventory(group)
            durations = [x.duration for x in group]
            if music_maker is not None:
                source_annotation = makers.SourceAnnotation(source=music_maker)
                contexted_music_maker = self.get_cached_maker(
                    music_maker,
                    context_map=context_map,
                    context_name=context_name,
                    )
                music = contexted_music_maker(
                    durations,
                    initial_offset=group.start_offset,
                    meter_cache=self.cached_meters,
                    meters=self.meters,
                    seed=seed,
                    )
                seed += 1
                attach(source_annotation, music)
            else:
                music = silence_music_maker(
                    durations,
                    beam_music=False,
                    initial_offset=group.start_offset,
                    meter_cache=self.cached_meters,
                    meters=self.meters,
                    )
                attach(silence_source_annotation, music)
            result.append(music)
        return result, seed

    ### PUBLIC PROPERTIES ###

    @property
    def all_context_bundles(self):
        bundles = self.parametric_context_bundles
        bundles.update(self.semantic_context_bundles)
        return bundles

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
