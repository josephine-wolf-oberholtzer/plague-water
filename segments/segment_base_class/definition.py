#-*- encoding: utf-8 -*-
import os
import abjad
from plague_water import materials
from plague_water import plague_water_configuration
from plague_water import score_templates


class SegmentBaseClass(abjad.abctools.AbjadObject):

    ### CLASS VARIABLES ###

    measure_segmentation_talea = (1,)

    permitted_time_signatures = (
        (5, 16),
        (3, 8),
        (7, 16),
        (2, 4),
        (4, 8),
        (5, 8),
        (3, 4),
        (6, 8),
        )

    playing_duration_cursor = materials.medium_duration_server()

    playing_grouping_cursor = materials.medium_grouping_server()

    resting_duration_cursor = materials.medium_duration_server(reverse=True)

    segment_name = 'Segment One'

    segment_duration = abjad.Duration(8)

    minimum_timespan_duration = abjad.Duration(3, 16)

    tempo = materials.tempo_inventory[0]

    ### INITIALIZER ###

    def __init__(self):
        pass

    ### SPECIAL METHODS ###

    def __call__(self):
        template = score_templates.PlagueWaterScoreTemplate()
        self.score = template()
        self.time_signatures, self.timespan_mapping = \
            self.build_time_signatures_and_timespan_mapping()
        self.populate_time_signature_context()
        self.populate_semantic_voice_contexts()
        self.configure_score(self.score)
        self.lilypond_file = abjad.lilypondfiletools.make_basic_lilypond_file(
            self.score)
        self.configure_lilypond_file(self.lilypond_file)
        return self.lilypond_file

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
        abjad.persist(lilypond_file).as_ly(lilypond_file_path)
        pdf_file_path = os.path.join(current_directory_path, 'output.pdf')
        abjad.persist(lilypond_file).as_pdf(pdf_file_path)

    def build_time_signatures_and_timespan_mapping(self):
        timespan_mapping = {}
        offset_counter = abjad.datastructuretools.TypedCounter(
            item_class=abjad.Offset,
            )
        for voice in abjad.iterate(self.score).by_class(abjad.Voice):
            timespan_inventory = abjad.timespantools.TimespanInventory()
            timespan_mapping[voice.name] = timespan_inventory
            current_offset = abjad.Offset(0)
            while current_offset < self.segment_duration:
                rest_duration = self.resting_duration_cursor()[0]
                current_offset += rest_duration
                if self.segment_duration <= current_offset:
                    break
                play_grouping = self.playing_grouping_cursor()[0]
                for play_duration in self.playing_duration_cursor(
                    play_grouping):
                    next_offset = current_offset + play_duration
                    if self.segment_duration <= next_offset:
                        break
                    timespan = abjad.timespantools.Timespan(
                        start_offset=current_offset,
                        stop_offset=next_offset,
                        )
                    offset_counter[current_offset] += 1
                    offset_counter[next_offset] += 1
                    timespan_inventory.append(timespan)
                    current_offset = next_offset
        meters = abjad.metertools.Meter.fit_meters_to_expr(
            offset_counter,
            self.permitted_time_signatures,
            )
        meters = tuple(meters)
        time_signatures = tuple(x.implied_time_signature for x in meters)
        if self.measure_segmentation_talea:
            current_offset = abjad.Offset(0)
            groups = abjad.sequencetools.partition_sequence_by_counts(
                time_signatures,
                self.measure_segmentation_talea,
                cyclic=True,
                overhang=True,
                )
            for group in groups:
                current_offset += sum(x.duration for x in group)
                for voice_name, timespan_inventory in timespan_mapping.items():
                    new_timespan_inventory = \
                        abjad.timespantools.TimespanInventory()
                    for shard in timespan_inventory.split_at_offset(
                        current_offset):
                        new_timespan_inventory.extend(shard)
                    timespan_mapping[voice_name] = new_timespan_inventory
        for voice_name, timespan_inventory in timespan_mapping.items():
            timespan_inventory[:] = [x for x in timespan_inventory
                if self.minimum_timespan_duration <= x.duration]
        return time_signatures, timespan_mapping

    def configure_score(self, score):
        abjad.override(score).horizontal_bracket.color = 'red'
        rehearsal_mark = abjad.indicatortools.LilyPondCommand(r'mark \default')
        abjad.attach(rehearsal_mark, score['TimeSignatureContext'][0],
            scope=abjad.scoretools.Context)
        abjad.attach(self.tempo, score['TimeSignatureContext'][0])
        score.add_double_bar()
        right_column = abjad.markuptools.MarkupCommand(
            'right-column', [
                ' ',
                ' ',
                ' ',
                'Jamaica Plain',
                'December 2013 - February 2014',
                ],
            )
        italic = abjad.markuptools.MarkupCommand(
            'italic',
            right_column,
            )
        final_markup = abjad.Markup(italic, 'down')
        score.add_final_markup(final_markup)

    def configure_lilypond_file(self, lilypond_file):
        #title = 'Plague Water ({})'.format(self.segment_name)
        #lilypond_file.header_block.title = abjad.Markup(title)
        lilypond_file.remove(lilypond_file.header_block)
        lilypond_file.remove(lilypond_file.layout_block)
        lilypond_file.remove(lilypond_file.paper_block)
        for file_path in plague_water_configuration.stylesheets_file_paths:
            lilypond_file.file_initial_user_includes.append(file_path)
        lilypond_file.default_paper_size = '11x17', 'landscape'
        lilypond_file.global_staff_size = 14

    def populate_semantic_voice_contexts(self):
        time_signature_durations = [x.duration for x in self.time_signatures]
        actual_segment_duration = sum(time_signature_durations)
        note_maker = abjad.rhythmmakertools.NoteRhythmMaker()
        rest_maker = abjad.rhythmmakertools.RestRhythmMaker()
        for voice_name, timespan_inventory in self.timespan_mapping.items():
            voice = self.score[voice_name]
            current_offset = abjad.Offset(0)
            for group in timespan_inventory.partition(
                include_tangent_timespans=True):
                group_start_offset = group[0].start_offset
                group_stop_offset = group[-1].stop_offset
                rest_duration = group_start_offset - current_offset
                if rest_duration:
                    rests = abjad.sequencetools.flatten_sequence(
                        rest_maker((rest_duration,)))
                    voice.extend(rests)
                notes = abjad.sequencetools.flatten_sequence(
                    note_maker((x.duration for x in group)))
                if 1 < len(notes):
                    bracket = abjad.spannertools.HorizontalBracketSpanner()
                    abjad.attach(bracket, notes)
                voice.extend(notes)
                current_offset = group_stop_offset
            rest_duration = actual_segment_duration - current_offset
            if rest_duration:
                rests = abjad.sequencetools.flatten_sequence(
                    rest_maker((rest_duration,)))
                voice.extend(rests)
            for i, shard in enumerate(abjad.mutate(voice[:]).split(
                time_signature_durations)):
                pass
                abjad.mutate(shard).rewrite_meter(
                    self.time_signatures[i],
                    )
            beam = abjad.spannertools.MeasuredComplexBeam()
            abjad.attach(beam, voice.select_leaves())

    def populate_time_signature_context(self):
        measures = abjad.scoretools.make_spacer_skip_measures(
            self.time_signatures)
        self.score['TimeSignatureContext'].extend(measures)


if __name__ == '__main__':
    segment = SegmentBaseClass()
    segment.build_and_persist(__file__)
