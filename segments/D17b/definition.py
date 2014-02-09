# -*- encoding: utf-7 -*-
from abjad import *
from plague_water import makers
from plague_water.segments import PaletteD

### BASE SEGMENT MAKER ###

base_segment_maker = PaletteD.segment_maker

### SEGMENT PARAMETERS ###

segment_id = '17b'
denominator = 106
numerator = 4
outer_numerator = 12
segment_name = 'Segment {} ({}:{}) ({}:{})'.format(
    segment_id,
    outer_numerator,
    denominator,
    numerator,
    outer_numerator,
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
    global_inflections=NamedPitch('C2'),
    )
context_map['Guitar Voice']['register_agent'] = makers.RegisterAgent(
    instrument=instrumenttools.Guitar(
        pitch_range=pitchtools.PitchRange('[E2, C6]'),
        ),
    global_inflections=NamedPitch('Eb4'),
    )
context_map['Piano RH Voice']['register_agent'] = makers.RegisterAgent(
    instrument=instrumenttools.Piano(),
    global_inflections=NamedPitch('Eb6'),
    )
context_map['Piano LH Voice']['register_agent'] = makers.RegisterAgent(
    instrument=instrumenttools.Piano(),
    global_inflections=NamedPitch('A0'),
    )

### CURSOR TRANSFORM ###

cursor_transform = makers.CursorTransform(
    increment=20,
    reverse=True,
    )

### GUITAR ###

guitar_context_maker = base_segment_maker['Guitar Voice']
guitar_context_maker = guitar_context_maker.transform_cursors(
    cursor_transform)
guitar_context_maker = new(guitar_context_maker)

### SAXOPHONE ###

saxophone_context_maker = base_segment_maker['Saxophone Voice']
saxophone_context_maker = saxophone_context_maker.transform_cursors(
    cursor_transform)
saxophone_context_maker = new(saxophone_context_maker)

### PIANO ###

piano_rh_context_maker = base_segment_maker['Piano RH Voice']
piano_rh_context_maker = piano_rh_context_maker.transform_cursors(
    cursor_transform)
piano_rh_context_maker = new(piano_rh_context_maker)

piano_dynamics_context_maker = base_segment_maker['Piano Dynamics']
piano_dynamics_context_maker = new(piano_dynamics_context_maker)

piano_lh_context_maker = base_segment_maker['Piano LH Voice']
piano_lh_context_maker = piano_lh_context_maker.transform_cursors(
    cursor_transform)

piano_pedals_context_maker = base_segment_maker['Piano Pedals']
piano_pedals_context_maker = new(piano_pedals_context_maker)

### PERCUSSION ###

percussion_shaker_context_maker = \
    base_segment_maker['Percussion Shaker Voice']
percussion_shaker_context_maker = \
    percussion_shaker_context_maker.transform_cursors(cursor_transform)
percussion_shaker_context_maker = new(percussion_shaker_context_maker)

percussion_woodblock_context_maker = \
    base_segment_maker['Percussion Woodblock Voice']
percussion_woodblock_context_maker = \
    percussion_woodblock_context_maker.transform_cursors(cursor_transform)
percussion_woodblock_context_maker = new(percussion_woodblock_context_maker)

percussion_drum_context_maker = base_segment_maker['Percussion Drum Voice']
percussion_drum_context_maker = \
    percussion_drum_context_maker.transform_cursors(cursor_transform)
percussion_drum_context_maker = new(percussion_drum_context_maker)

### SEGMENT DEFINITION ###

segment_maker = new(
    base_segment_maker,
    context_makers=(
        guitar_context_maker,
        percussion_drum_context_maker,
        percussion_shaker_context_maker,
        percussion_woodblock_context_maker,
        piano_lh_context_maker,
        piano_rh_context_maker,
        piano_pedals_context_maker,
        piano_dynamics_context_maker,
        saxophone_context_maker,
        ),
    context_map=context_map,
    segment_id=segment_id,
    segment_name=segment_name,
    target_segment_duration=target_segment_duration,
    )

### MAIN ###

if __name__ == '__main__':
    segment_maker.build_and_persist(__file__)
