# -*- encoding: utf-8 -*-
from abjad import *
from plague_water import makers
from plague_water import materials
from plague_water import score_templates

### SEGMENT PARAMETERS ###

segment_id = 11
numerator = 2
denominator = 106
segment_name = 'Segment {} ({}:{})'.format(
    segment_id,
    numerator,
    denominator,
    )

measure_segmentation_talea = (1,)
permitted_time_signatures = materials.mixed_time_signatures
segment_tempo = materials.tempo_inventory[0]
segment_target_duration = makers.SegmentMaker.get_segment_target_duration(
    denominator=denominator,
    numerator=numerator,
    tempo=segment_tempo,
    total_duration_in_seconds=480,
    )

### CONTEXT MAP ###

score_template = score_templates.PlagueWaterScoreTemplate()
context_map = datastructuretools.ContextMap(score_template)
context_map['Plague Water Score']['playing_durations'] = [1, 1]
context_map['Plague Water Score']['playing_groupings'] = [1, 1]
context_map['Plague Water Score']['leading_rest_durations'] = [1, 1]
context_map['Plague Water Score']['tailing_rest_durations'] = None

### BRUSHES ###

### SEGMENT DEFINITION ###

segment_maker = makers.SegmentMaker(
    context_map=context_map,
    is_final_segment=False,
    measure_segmentation_talea=measure_segmentation_talea,
    permitted_time_signatures=permitted_time_signatures,
    segment_name=segment_name,
    segment_target_duration=segment_target_duration,
    segment_tempo=segment_tempo,
    )

### MAIN ###

if __name__ == '__main__':
    segment_maker.build_and_persist(__file__)
