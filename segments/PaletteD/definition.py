# -*- encoding: utf-8 -*-
from abjad import *
from plague_water import makers
from plague_water import materials
from plague_water import score_templates

### SEGMENT PARAMETERS ###

measure_segmentation_talea = (1,)
permitted_time_signatures = materials.prime_time_signatures
segment_tempo = indicatortools.Tempo(durationtools.Duration(1, 4), 96)

### CONTEXT MAP ###

score_template = score_templates.PlagueWaterScoreTemplate()
score = score_template()
context_map = datastructuretools.ContextMap(score_template)
context_map[score]['minimum_timespan_duration'] = durationtools.Duration(1, 8)
context_map[score]['pitch_class_agent'] = makers.PitchClassAgent(
    pitch_class_ratio=(1, 1, 1),
    pitch_class_talea=(
        [0, 3, 2, 5, 11, 1],
        [2, 8, 10, 11],
        [1, 4],
        ),
    transform_ratio=None,
    transform_talea=None,
    )

### RHYTHM MAKERS ###

fanfare_one_rhythm_maker = new(
    materials.fanfare_rhythm_maker,
    incise_specifier=new(
        materials.fanfare_rhythm_maker.incise_specifier,
        prefix_lengths=(2, 2, 3, 2, 2),
        talea_denominator=32,
        ),
    )

fanfare_two_rhythm_maker = new(
    materials.fanfare_rhythm_maker,
    incise_specifier=rhythmmakertools.InciseSpecifier(
        body_ratio=(1,),
        fill_with_notes=True,
        incise_output=True,
        prefix_lengths=(1, 2),
        prefix_talea=(1, 1, 1, 2),
        suffix_lengths=(0,),
        suffix_talea=(),
        talea_denominator=32,
        ),
    )

### TIMESPAN MAKERS ###

guitar_context_maker = makers.ContextMaker(
    context_name='Guitar Voice',
    music_makers=[
        materials.basic_music_maker,
        ]
    )

saxophone_context_maker = makers.ContextMaker(
    context_name='Saxophone Voice',
    music_makers=[
        materials.basic_music_maker,
        ]
    )

piano_rh_context_maker = makers.ContextMaker(
    context_name='Piano RH Voice',
    music_makers=[
        materials.piano_glissed_keys_music_maker,
        ],
    )

piano_lh_context_maker = makers.ContextMaker(
    context_name='Piano LH Voice',
    music_makers=[
        materials.basic_music_maker,
        ],
    )

piano_dynamics_context_maker = makers.ContextMaker(
    context_dependencies=(
        'Piano LH Voice',
        'Piano RH Voice',
        ),
    context_name='Piano Dynamics',
    music_makers=[
        materials.piano_dynamics_music_maker,
        ],
    )

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

percussion_context_maker = makers.ContextMaker(
    context_name='Percussion Voice',
    music_makers=[
        materials.basic_music_maker,
        ],
    )

### SEGMENT DEFINITION ###

segment_maker = makers.SegmentMaker(
    context_map=context_map,
    is_final_segment=False,
    measure_segmentation_talea=measure_segmentation_talea,
    permitted_time_signatures=permitted_time_signatures,
    segment_tempo=segment_tempo,
    context_makers=(
        guitar_context_maker,
        percussion_context_maker,
        piano_dynamics_context_maker,
        piano_lh_context_maker,
        piano_pedals_context_maker,
        piano_rh_context_maker,
        saxophone_context_maker,
        )
    )
