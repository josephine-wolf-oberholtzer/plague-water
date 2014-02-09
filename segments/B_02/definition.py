# -*- encoding: utf-8 -*-
from abjad import *
from plague_water import makers
from plague_water.segments import B_palette

### BASE SEGMENT MAKER ###

base_segment_maker = B_palette.segment_maker

### SEGMENT PARAMETERS ###

segment_id = 2
numerator = 3
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

### CONTEXT MAP ###

context_map = base_segment_maker.context_map.copy()
context_map['Plague Water Score']['pitch_class_agent'] = new(
    context_map['Plague Water Score']['pitch_class_agent'],
    )
context_map['Saxophone Voice']['register_agent'] = makers.RegisterAgent(
    instrument=instrumenttools.BaritoneSaxophone(),
    global_inflections=makers.RegisterCurve(
        ratio=(1,),
        registers=(
            NamedPitch('A2'),
            NamedPitch('C2'),
            ),
        ),
    )
context_map['Guitar Voice']['register_agent'] = makers.RegisterAgent(
    instrument=instrumenttools.Guitar(),
    global_inflections=makers.RegisterCurve(
        ratio=(1,),
        registers=(
            NamedPitch('C3'),
            NamedPitch('E2'),
            ),
        ),
    )
context_map['Piano RH Voice']['register_agent'] = makers.RegisterAgent(
    instrument=instrumenttools.Piano(),
    global_inflections=NamedPitch('C4'),
    )
context_map['Piano LH Voice']['register_agent'] = makers.RegisterAgent(
    instrument=instrumenttools.Piano(),
    global_inflections=makers.RegisterCurve(
        ratio=(1,),
        registers=(
            NamedPitch('A1'),
            NamedPitch('F#2'),
            ),
        ),
    )

### CURSOR TRANSFORM ###

cursor_transform = makers.CursorTransform(
    increment=0,
    )

### BRUSHES ###

guitar_context_maker = new(
    base_segment_maker['Guitar Voice'].transform_cursors(cursor_transform),
    )

saxophone_context_maker = new(
    base_segment_maker['Saxophone Voice'].transform_cursors(cursor_transform),
    )

piano_rh_context_maker = new(
    base_segment_maker['Piano RH Voice'].transform_cursors(cursor_transform),
    )

piano_lh_context_maker = new(
    base_segment_maker['Piano LH Voice'].transform_cursors(cursor_transform),
    )

percussion_context_maker = new(
    base_segment_maker['Percussion Voice'].transform_cursors(cursor_transform),
    )

### SEGMENT DEFINITION ###

segment_maker = new(
    base_segment_maker,
    context_map=context_map,
    segment_id=segment_id,
    segment_name=segment_name,
    target_segment_duration=target_segment_duration,
    context_makers=(
        guitar_context_maker,
        percussion_context_maker,
        piano_lh_context_maker,
        piano_rh_context_maker,
        saxophone_context_maker,
        )
    )

### MAIN ###

if __name__ == '__main__':
    segment_maker.build_and_persist(__file__)
