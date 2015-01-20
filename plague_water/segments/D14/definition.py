# -*- encoding: utf-8 -*-
from abjad import *
from plague_water import makers
from plague_water.segments import PaletteD

### BASE SEGMENT MAKER ###

base_segment_maker = PaletteD.segment_maker

### SEGMENT PARAMETERS ###

segment_id = 14
numerator = 9
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

rebarrings = [
    (7, 8),  # 175: (7, 8)
    (7, 8),  # 176: (7, 8)
    (5, 8),  # 177: (5, 8)
    (6, 8),  # 178: (7, 16)
    #        # 179: (5, 16)
    (7, 8),  # 180: (7, 8)
    (3, 16), # 181: (3, 16)
    (7, 8),  # 182: (7, 16)
    #        # 183: (7, 16)
    (4, 8),  # 184: (5, 16)
    #        # 185: (3, 16)
    (7, 8),  # 186: (7, 8)
    (3, 8),  # 187: (3, 16)
    #        # 188: (3, 16)
    (8, 8),  # 189: (5, 16)
    #        # 190: (11, 16)
    (7, 8),  # 191: (7, 8)
    (4, 8),  # 192: (5, 16)
    #        # 193: (3, 16)
    (3, 16), # 194: (3, 16)
    (7, 8),  # 195: (7, 16)
    #        # 196: (7, 16)
    (5, 8),  # 197: (5, 8)
    (3, 16), # 198: (3, 16)
    (7, 8),  # 199: (7, 8)
    (5, 8),  # 200: (3, 16)
    #        # 201: (7, 16)
    (5, 8),  # 202: (5, 8)
    (7, 8),  # 203: (7, 8)
    (3, 8),  # 204: (3, 16)
    #        # 205: (3, 16)
    (7, 16), # 206: (7, 16)
    (7, 8),  # 207: (7, 8)
    (4, 8),  # 208: (5, 16)
    #        # 209: (3, 16)
    ]

### CONTEXT MAP ###

context_map = base_segment_maker.context_map.copy()
context_map['Plague Water Score']['pitch_agent'] = new(
    context_map['Plague Water Score']['pitch_agent'].rotate(6),
    )
context_map['Saxophone Voice']['register_agent'] = makers.RegisterAgent(
    global_inflections=NamedPitch('C2'),
    )
context_map['Guitar Voice']['register_agent'] = makers.RegisterAgent(
    global_inflections=NamedPitch('F#4'),
    )

### CURSOR TRANSFORM ###

cursor_transform = makers.CursorTransform(
    increment=17,
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

piano_lh_context_maker = base_segment_maker['Piano LH Voice']
piano_lh_context_maker = piano_lh_context_maker.transform_cursors(
    cursor_transform)

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

### DEPENDENT CONTEXT MAKERS ###

piano_pedals_context_maker = base_segment_maker['Piano Pedals']
piano_pedals_context_maker = new(piano_pedals_context_maker)

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
        saxophone_context_maker,
        ),
    context_map=context_map,
    rebarrings=rebarrings,
    segment_id=segment_id,
    segment_name=segment_name,
    target_segment_duration=target_segment_duration,
    )

### MAIN ###

if __name__ == '__main__':
    segment_maker.build_and_persist(__file__)
