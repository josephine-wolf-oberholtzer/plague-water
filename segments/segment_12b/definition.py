# -*- encoding: utf-8 -*-
from abjad import *
from plague_water import makers
from plague_water.segments import palette_c

### BASE SEGMENT MAKER ###

base_segment_maker = palette_c.segment_maker

### SEGMENT PARAMETERS ###

segment_id = '12b'
denominator = 106
numerator = 7
outer_numerator = 12
segment_name = 'Segment {} ({}:{}) ({}:{})'.format(
    segment_id,
    outer_numerator,
    denominator,
    numerator,
    outer_numerator,
    )

segment_tempo = indicatortools.Tempo(durationtools.Duration(1, 4), 40)
target_segment_duration = makers.SegmentMaker.get_segment_target_duration(
    denominator=denominator,
    numerator=numerator,
    tempo=segment_tempo,
    total_duration_in_seconds=480,
    )

### SEGMENT DEFINITION ###

segment_maker = new(
    base_segment_maker,
    segment_id=segment_id,
    segment_name=segment_name,
    segment_tempo=segment_tempo,
    target_segment_duration=target_segment_duration,
    )

### MAIN ###

if __name__ == '__main__':
    segment_maker.build_and_persist(__file__)
