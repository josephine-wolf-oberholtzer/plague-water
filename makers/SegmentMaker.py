#-*- encoding: utf-8 -*-
import collections
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
        'segment_target_duration',
        'tempo',
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
        tempo=None,
        ):
        from plague_water import makers
        # verify
        assert isinstance(context_hierarchy,
            (datastructuretools.ContextHierarchy, type(None)))
        assert isinstance(guitar_brush, (makers.Brush, type(None)))
        assert isinstance(guitar_lifeline_strategy,
            (makers.LifelineStrategy, type(None)))
        assert isinstance(measure_segmentation_talea, collections.Iterable)
        assert all(isinstance(x, int) for x in measure_segmentation_talea)
        assert all(0 < x for x in measure_segmentation_talea)
        assert isinstance(minimum_timespan_duration, Duration)
        assert 0 < minimum_timespan_duration < 1
        assert isinstance(percussion_lh_brush, (makers.Brush, type(None)))
        assert isinstance(percussion_rh_brush, (makers.Brush, type(None)))
        assert isinstance(permitted_time_signatures, collections.Iterable)
        assert len(permitted_time_signatures)
        assert all(isinstance(x, TimeSignature)
            for x in permitted_time_signatures)
        assert isinstance(piano_lh_brush, (makers.Brush, type(None)))
        assert isinstance(piano_lifeline_strategy,
            (makers.LifelineStrategy, type(None)))
        assert isinstance(piano_rh_brush, (makers.Brush, type(None)))
        assert isinstance(saxophone_brush, (makers.Brush, type(None)))
        assert isinstance(segment_target_duration, Duration)
        assert 1 <= segment_target_duration
        assert isinstance(tempo, Tempo)
        # set inputs
        self.context_hierarchy = context_hierarchy
        self.guitar_brush = guitar_brush
        self.guitar_lifeline_strategy = guitar_lifeline_strategy
        self.measure_segmentation_talea = measure_segmentation_talea
        self.minimum_timespan_duration = minimum_talea_duration
        self.percussion_lh_brush = percussion_lh_brush
        self.percussion_rh_brush = percussion_rh_brush
        self.permitted_time_signatures = permitted_time_signatures
        self.piano_lh_brush = piano_lh_brush
        self.piano_lifeline_strategy = piano_lifeline_strategy
        self.piano_rh_brush = piano_rh_brush
        self.saxophone_brush = saxophone_brush
        self.segment_target_duration = segment_target_duration
        self.tempo = tempo
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
        self.time_signatures = None

    ### SPECIAL METHODS ###

    def __call__(self):
        template = score_templates.PlagueWaterScoreTemplate()
        self.score = template()
        self.build_semantic_voice_timespan_inventories()
        self.meters = self.find_meters()
        self.time_signatures = tuple(meter.implied_time_signature
            for meter in self.meters)
        self.segment_duration = sum(time_signature.duration
            for time_signature in self.time_signatures)
        self.cleanup_timespan_inventories()
        self.build_lifeline_timespan_inventories()
        self.populate_time_signature_context()
        self.populate_voice_contexts()
        self.configure_score()
        self.lilypond_file = lilypondfiletools.make_basic_lilypond_file(
            self.score)
        self.configure_lilypond_file()
        return self.lilypond_file

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

    @classmethod
    def build_and_persist(class_, current_file_path):
        segment = class_()
        lilypond_file = segment()
        current_directory_path = os.path.dirname(os.path.abspath(
            os.path.expanduser(current_file_path)))
        lilypond_file_path = os.path.join(current_directory_path, 'output.ly')
        persist(lilypond_file).as_ly(lilypond_file_path)
        pdf_file_path = os.path.join(current_directory_path, 'output.pdf')
        persist(lilypond_file).as_pdf(pdf_file_path)

    def build_lifeline_timespan_inventories(self):
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
        if self.guitar_brush is not None:
            self.guitar_timespans = self.guitar_brush(
                segment_target_duration=self.segment_target_duration,
                )
        if self.percussion_lh_brush is not None:
            self.percussion_lh_timespans = self.percussion_lh_brush(
                segment_target_duration=self.segment_target_duration,
                )
        if self.percussion_rh_brush is not None:
            self.percussion_rh_timespans = self.percussion_rh_brush(
                segment_target_duration=self.segment_target_duration,
                )
        if self.piano_lh_brush is not None:
            self.piano_lh_timespans = self.piano_lh_brush(
                segment_target_duration=self.segment_target_duration,
                )
        if self.piano_rh_brush is not None:
            self.piano_rh_timespans = self.piano_rh_brush(
                segment_target_duration=self.segment_target_duration,
                )
        if self.saxophone_brush is not None:
            self.saxophone_timespans = self.saxophone_brush(
                segment_target_duration=self.segment_target_duration,
                )

    def cleanup_timespan_inventories(self):
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
                if minimum_timespan_duration <= x.duration]

    def configure_lilypond_file(self):
        lilypond_file = self.lilypond_file
        lilypond_file.remove(lilypond_file.header_block)
        lilypond_file.remove(lilypond_file.layout_block)
        lilypond_file.remove(lilypond_file.paper_block)
        for file_path in plague_water_configuration.stylesheets_file_paths:
            lilypond_file.file_initial_user_includes.append(file_path)
        lilypond_file.default_paper_size = '11x17', 'landscape'
        lilypond_file.global_staff_size = 14

    def configure_score(self):
        override(self.score).horizontal_bracket.color = 'red'
        rehearsal_mark = indicatortools.LilyPondCommand(r'mark \default')
        attach(rehearsal_mark, self.score['TimeSignatureContext'][0],
            scope=scoretools.Context)
        attach(self.tempo, self.score['TimeSignatureContext'][0])
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

    def populate_voice_contexts(self):
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
            self.score[context_name].extend(
                self.realize_timespans(
                    context_hierarchy=self.context_hierarchy,
                    context_name=context_name,
                    time_signatures=self.time_signatures,
                    timespan_inventory=timespan_inventory,
                    ))

    def populate_time_signature_context(self):
        measures = scoretools.make_spacer_skip_measures(
            self.time_signatures)
        self.score['TimeSignatureContext'].extend(measures)

    def realize_timespans(
        self,
        context_hierarchy=None,
        context_name=None
        time_signatures=None,
        timespan_inventory=None,
        ):
        durations = [x.duration for x in time_signatures]
        total_duration = sum(durations)
        rest_maker = rhythmmakertools.RestRhythmMaker()
        rests = sequencetools.flatten_sequence(rest_maker(durations))
        return rests

    ### PUBLIC PROPERTIES ###

    @property
    def segment_name(self):
        file_path = os.path.abspath(__file__)
        directory_path = os.path.split(file_path)
        base_name = os.path.basename(directory_path)
        return 'Segment {}'.format(base_name.title())
