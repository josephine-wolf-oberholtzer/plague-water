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
        'context_hierarchy',
        'guitar_brush',
        'guitar_lifeline_strategy',
        'guitar_pedal_timespans',
        'guitar_timespans',
        'lilypond_file',
        'measure_segmentation_talea',
        'meters',
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
        )

    ### INITIALIZER ###

    def __init__(
        self,
        context_hierarchy=None,
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
        assert isinstance(context_hierarchy,
            (datastructuretools.ContextHierarchy, type(None)))
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
        self.context_hierarchy = context_hierarchy
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
        self.guitar_pedal_timespans = None
        self.guitar_timespans = None
        self.lilypond_file = None
        self.meters = None
        self.percussion_lh_timespans = None
        self.percussion_rh_timespans = None
        self.piano_lh_timespans = None
        self.piano_pedal_timespans = None
        self.piano_rh_timespans = None
        self.saxophone_timespans = None
        self.score = None
        self.segment_actual_duration = None
        self.time_signatures = None

    ### SPECIAL METHODS ###

    def __call__(self):
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
        self.populate_time_signature_context()
        self.populate_voice_contexts()
        self.cleanup_voice_contexts()
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

    def __repr__(self):
        return '<Segment: {!r}>'.format(self.segment_name)

    ### PUBLIC METHODS ###

    def build_and_persist(self, current_file_path):
        print 'build and persist'
        current_directory_path = os.path.dirname(os.path.abspath(
            os.path.expanduser(current_file_path)))
        pdf_file_path = os.path.join(
            current_directory_path,
            'output.pdf',
            )
        persist(self).as_pdf(
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
        if self.guitar_brush is not None:
            print '\tguitar'
            self.guitar_timespans = self.guitar_brush(
                segment_target_duration=self.segment_target_duration,
                )
        if self.percussion_lh_brush is not None:
            print '\tpercussion lh brush'
            self.percussion_lh_timespans = self.percussion_lh_brush(
                segment_target_duration=self.segment_target_duration,
                )
        if self.percussion_rh_brush is not None:
            print '\tpercussion rh brush'
            self.percussion_rh_timespans = self.percussion_rh_brush(
                segment_target_duration=self.segment_target_duration,
                )
        if self.piano_lh_brush is not None:
            print '\tpiano lh brush'
            self.piano_lh_timespans = self.piano_lh_brush(
                segment_target_duration=self.segment_target_duration,
                )
        if self.piano_rh_brush is not None:
            print '\tpiano rh brush'
            self.piano_rh_timespans = self.piano_rh_brush(
                segment_target_duration=self.segment_target_duration,
                )
        if self.saxophone_brush is not None:
            print '\tsaxophone brush'
            self.saxophone_timespans = self.saxophone_brush(
                segment_target_duration=self.segment_target_duration,
                )

    def cleanup_voice_contexts(self):
        for voice in iterate(self.score).by_class(Voice):
            for container in voice:
                pass

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
        score_block = lilypondfiletools.ScoreBlock()
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

    def make_rest_containers(durations):
        from plague_water import makers
        source_annotation = makers.SourceAnnotation()
        rest_maker = rhythmmakertools.RestRhythmMaker()
        rests = rest_maker(durations)
        rest_containers = [Container(x) for x in rests]
        for rest_container in rest_containers:
            attach(source_annotation, rest_container)
        return rest_containers

    def populate_voice_contexts(self):
        print 'populate voice contexts'
        context_names_and_timespan_inventories = (
            ('Guitar Voice', self.guitar_timespans),
            ('Guitar Pedals', self.guitar_pedal_timespans),
            ('Percussion LH Voice', self.percussion_lh_timespans),
            ('Percussion RH Voice', self.percussion_rh_timespans),
            ('Piano LH Voice', self.piano_lh_timespans),
            ('Piano RH Voice', self.piano_rh_timespans),
            ('Piano Pedals', self.piano_pedal_timespans),
            ('Saxophone Voice', self.saxophone_timespans),
            )
        for context_name, timespan_inventory in \
            context_names_and_timespan_inventories:
            realization = self.realize_timespans(
                context_hierarchy=self.context_hierarchy,
                context_name=context_name,
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
        context_hierarchy=None,
        context_name=None,
        timespan_inventory=None,
        ):
        from plague_water import makers
        result = []
        if timespan_inventory is None:
            rest_containers = make_rest_containers(self.time_signatures)
            result.extend(rest_containers)
            return result
        previous_offset = Offset(0)
        for partitioned_group in timespan_inventory.partition(
            include_tangent_timespans=True):
            group_start_offset = partitioned_group.start_offset
            group_stop_offset = partitioned_group.stop_offset
            if previous_offset < group_start_offset:
                rest_duration = group_start_offset - previous_offset
                rest_containers = make_rest_containers((rest_duration,))
                result.extend(rest_containers)
            for music_maker, group in itertools.groupby(
                partitioned_group,
                lambda x: x.music_maker,
                ):
                source_annotation = makers.SourceAnnotation(source=music_maker)
                durations = [x.duration for x in group]
                music = music_maker(
                    durations,
                    context_hierarchy=context_hierarchy,
                    context_name=context_name,
                    )
                attach(source_annotation, music)
                result.append(music)
            previous_offset = group_stop_offset
        if previous_offset < self.segment_actual_duration:
            rest_duration = self.segment_actual_duration - previous_offset
            rest_containers = make_rest_containers((rest_duration,))
            result.extend(rest_containers)
        return result

    ### PUBLIC PROPERTIES ###

    @property
    def segment_name(self):
        file_path = os.path.abspath(__file__)
        directory_path = os.path.split(file_path)
        base_name = os.path.basename(directory_path)
        return 'Segment {}'.format(base_name.title())
