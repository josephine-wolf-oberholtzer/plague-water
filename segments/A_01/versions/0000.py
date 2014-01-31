# -*- encoding: utf-8 -*-
from abjad import *
from plague_water import makers
from plague_water.segments import A_palette

### BASE SEGMENT MAKER ###

base_segment_maker = A_palette.segment_maker

### SEGMENT PARAMETERS ###

segment_id = 1
numerator = 2
denominator = 106
segment_name = 'Segment {} ({}:{})'.format(
    segment_id,
    numerator,
    denominator,
    )

target_segment_duration = makers.SegmentMaker.get_segment_target_duration(
    denominator=denominator,
    numerator=numerator,
    tempo=base_segment_maker.segment_tempo,
    total_duration_in_seconds=480,
    )

### SEGMENT DEFINITION ###

segment_maker = new(
    base_segment_maker,
    is_final_segment=False,
    segment_id=segment_id,
    segment_name=segment_name,
    target_segment_duration=target_segment_duration,
    )

### MAIN ###

if __name__ == '__main__':
    segment_maker.build_and_persist(__file__)
