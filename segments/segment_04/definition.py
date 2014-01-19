# -*- encoding: utf-8 -*-
from abjad import *
from plague_water import makers
from plague_water.segments import palette_d

### BASE SEGMENT MAKER ###

base_segment_maker = palette_d.segment_maker

### SEGMENT PARAMETERS ###

segment_id = 4
numerator = 7
denominator = 106
segment_name = 'Segment {} ({}:{})'.format(
    segment_id,
    numerator,
    denominator,
    )

segment_target_duration = makers.SegmentMaker.get_segment_target_duration(
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
    segment_target_duration=segment_target_duration,
    )

### MAIN ###

if __name__ == '__main__':
    segment_maker.build_and_persist(__file__)
