# -*- encoding: utf-8 -*-
from abjad import *
from plague_water import makers
from plague_water.segments import palette_f

### BASE SEGMENT MAKER ###

base_segment_maker = palette_f.segment_maker

### SEGMENT PARAMETERS ###

segment_id = '10c'
numerator = 5
outer_numerator = 25
denominator = 106
segment_name = 'Segment {} ({}:{}) ({}:{})'.format(
    segment_id,
    outer_numerator,
    denominator,
    numerator,
    outer_numerator,
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
