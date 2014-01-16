# -*- encoding: utf-8 -*-
from abjad import *
from plague_water import makers
from plague_water import materials
from plague_water import score_templates

### SEGMENT PARAMETERS ###

index = 6
measure_segmentation_talea = (1,)
permitted_time_signatures = materials.mixed_time_signatures
segment_name = 'Segment {} ({}:{})'.format(
    index,
    materials.proportions[index - 1],
    sum(materials.proportions),
    )
segment_tempo = materials.tempo_inventory[0]
segment_target_duration = makers.SegmentMaker.get_segment_target_duration(
    denominator=sum(materials.proportions),
    numerator=materials.proportions[index - 1],
    tempo=segment_tempo,
    total_duration_in_seconds=480,
    )

### CONTEXT MAP ###

score = score_templates.PlagueWaterScoreTemplate()()
context_map = datastructuretools.ContextMap(score)
context_map[score]['playing_durations'] = [1, 1]
context_map[score]['playing_groupings'] = [1, 1]
context_map[score]['leading_rest_durations'] = [1, 1]
context_map[score]['tailing_rest_durations'] = None

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
