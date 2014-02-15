# -*- encoding: utf-8 -*-
from abjad import *
from plague_water import makers
from plague_water import materials
from plague_water import score_templates

### SEGMENT PARAMETERS ###

measure_segmentation_talea = (1,)
permitted_time_signatures = indicatortools.TimeSignatureInventory([(3, 8)])
segment_tempo = indicatortools.Tempo(durationtools.Duration(1, 4), 112)

segment_id = 6
numerator = 1
denominator = 106
segment_name = 'Segment {} ({}:{})'.format(
    segment_id,
    numerator,
    denominator,
    )

target_segment_duration = makers.SegmentMaker.get_segment_target_duration(
    denominator=denominator,
    numerator=numerator,
    tempo=segment_tempo,
    total_duration_in_seconds=480,
    )

### CONTEXT MAP ###

score_template = score_templates.PlagueWaterScoreTemplate()
score = score_template()
context_map = datastructuretools.ContextMap(score_template)
context_map[score]['minimum_timespan_duration'] = durationtools.Duration(1, 8)
context_map[score]['pitch_agent'] = makers.PitchClassAgent(
    pitch_class_ratio=(1, 1, 1),
    pitch_class_talea=(
        [0, 3, 2, 5, 11, 1],
        [2, 8, 10, 11],
        [1, 4],
        ),
    transform_ratio=None,
    transform_talea=None,
    )
context_map['Plague Water Score']['pitch_agent'] = new(
    context_map['Plague Water Score']['pitch_agent'],
    )
context_map['Guitar Voice']['register_agent'] = makers.RegisterAgent(
    global_inflections=NamedPitch('E2'),
    )
context_map['Piano LH Voice']['register_agent'] = makers.RegisterAgent(
    global_inflections=NamedPitch('C2'),
    )
context_map['Piano RH Voice']['register_agent'] = makers.RegisterAgent(
    global_inflections=NamedPitch('C5'),
    )
context_map['Saxophone Voice']['register_agent'] = makers.RegisterAgent(
    global_inflections=NamedPitch('C2'),
    )

### CURSOR TRANSFORM ###

cursor_transform = None

### GUITAR ###

guitar_context_maker = makers.ContextMaker(
    context_name='Guitar Voice',
    music_makers=[
        materials.basic_music_maker,
        ],
    )

### SAXOPHONE ###

saxophone_context_maker = makers.ContextMaker(
    context_name='Saxophone Voice',
    music_makers=[
        materials.basic_music_maker,
        ],
    )

### PIANO ###

piano_rh_context_maker = makers.ContextMaker(
    context_name='Piano RH Voice',
    music_makers=[
        materials.basic_music_maker,
        ],
    )

piano_lh_context_maker = makers.ContextMaker(
    context_name='Piano LH Voice',
    music_makers=[
        materials.basic_music_maker,
        ],
    )

### PERCUSSION ###

percussion_shaker_context_maker = makers.ContextMaker(
    context_name='Percussion Shaker Voice',
    music_makers=[
        new(materials.basic_music_maker,
            pitch_agent=materials.shaker_pitch_agent,
            ),
        ],
    )

percussion_woodblock_context_maker = makers.ContextMaker(
    context_name='Percussion Woodblock Voice',
    music_makers=[
        new(materials.basic_music_maker,
            pitch_agent=materials.woodblock_pitch_agent,
            ),
        ],
    )

percussion_drum_context_maker = makers.ContextMaker(
    context_name='Percussion Drum Voice',
    music_makers=[
        new(materials.basic_music_maker,
            pitch_agent=materials.drum_pitch_agent,
            ),
        ],
    )

### DEPENDENT CONTEXT MAKERS ###

piano_pedals_context_maker = makers.ContextMaker(
    context_dependencies=(
        'Piano LH Voice',
        'Piano RH Voice',
        ),
    context_name='Piano Pedals',
    music_makers=[
        materials.piano_pedals_music_maker,
        ],
    )

### SEGMENT DEFINITION ###

segment_maker = makers.SegmentMaker(
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
    measure_segmentation_talea=measure_segmentation_talea,
    permitted_time_signatures=permitted_time_signatures,
    segment_id=segment_id,
    segment_name=segment_name,
    segment_tempo=segment_tempo,
    target_segment_duration=target_segment_duration,
    )

### MAIN ###

if __name__ == '__main__':
    segment_maker.build_and_persist(__file__)
