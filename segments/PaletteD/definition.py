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

### TIMESPAN MAKERS ###

guitar_context_maker = makers.ContextMaker(
    context_name='Guitar Voice',
    music_maker_indices=(0, 1, 0, 0, 1),
    music_makers=[
        new(materials.basic_music_maker,
            timespan_agent=makers.SemanticTimespanAgent(
                leading_rest_durations=materials.very_short_durations(1),
                playing_durations=materials.very_short_durations(2),
                playing_groupings=materials.short_groupings(4),
                tailing_rest_durations=materials.short_durations(2),
                ),
            ),
        new(materials.basic_music_maker,
            timespan_agent=makers.SemanticTimespanAgent(
                leading_rest_durations=materials.very_short_durations(3),
                playing_durations=materials.short_durations(2),
                playing_groupings=materials.short_groupings(2),
                tailing_rest_durations=materials.medium_durations(4),
                ),
            ),
        ]
    )

saxophone_context_maker = makers.ContextMaker(
    context_name='Saxophone Voice',
    music_maker_indices=(0, 0, 1, 0, 1),
    music_makers=[
        new(materials.basic_music_maker,
            timespan_agent=makers.SemanticTimespanAgent(
                leading_rest_durations=materials.very_short_durations(5),
                playing_durations=materials.very_short_durations(3),
                playing_groupings=materials.short_groupings(3),
                tailing_rest_durations=materials.medium_durations(6),
                ),
            ),
        new(materials.basic_music_maker,
            timespan_agent=makers.SemanticTimespanAgent(
                leading_rest_durations=materials.very_short_durations(7),
                playing_durations=materials.short_durations(4),
                playing_groupings=materials.short_groupings(4),
                tailing_rest_durations=materials.very_short_durations(8),
                ),
            ),
        ]
    )

piano_rh_context_maker = makers.ContextMaker(
    context_name='Piano RH Voice',
    music_maker_indices=(1, 0, 0, 1, 0),
    music_makers=[
        new(materials.basic_music_maker,
            timespan_agent=makers.SemanticTimespanAgent(
                leading_rest_durations=materials.medium_durations(9),
                playing_durations=materials.very_short_durations(5),
                playing_groupings=materials.short_groupings(5),
                tailing_rest_durations=materials.very_short_durations(10),
                ),
            ),
        new(materials.basic_music_maker,
            timespan_agent=makers.SemanticTimespanAgent(
                leading_rest_durations=materials.very_short_durations(11),
                playing_durations=materials.short_durations(6),
                playing_groupings=materials.short_groupings(6),
                tailing_rest_durations=materials.short_durations(12),
                ),
            ),
        ],
    )

piano_lh_context_maker = makers.ContextMaker(
    context_name='Piano LH Voice',
    music_maker_indices=(0, 0, 1, 0, 1),
    music_makers=[
        new(materials.basic_music_maker,
            timespan_agent=makers.SemanticTimespanAgent(
                leading_rest_durations=materials.very_short_durations(13),
                playing_durations=materials.very_short_durations(7),
                playing_groupings=materials.short_groupings(7),
                tailing_rest_durations=materials.short_durations(14),
                ),
            ),
        new(materials.basic_music_maker,
            timespan_agent=makers.SemanticTimespanAgent(
                leading_rest_durations=materials.very_short_durations(15),
                playing_durations=materials.short_durations(8),
                playing_groupings=materials.short_groupings(8),
                tailing_rest_durations=materials.medium_durations(16),
                ),
            ),
        ],
    )

percussion_shaker_context_maker = makers.ContextMaker(
    context_name='Percussion Shaker Voice',
    music_makers=[
        new(materials.basic_music_maker,
            timespan_agent=makers.SemanticTimespanAgent(
                leading_rest_durations=materials.very_short_durations(17),
                playing_durations=materials.very_short_durations(9),
                playing_groupings=materials.short_groupings(9),
                tailing_rest_durations=materials.very_short_durations(18),
                ),
            ),
        new(materials.basic_music_maker,
            timespan_agent=makers.SemanticTimespanAgent(
                leading_rest_durations=materials.very_short_durations(19),
                playing_durations=materials.short_durations(0),
                playing_groupings=materials.short_groupings(0),
                tailing_rest_durations=materials.medium_durations(20),
                ),
            ),
        ],
    )

percussion_woodblock_context_maker = makers.ContextMaker(
    context_name='Percussion Woodblock Voice',
    music_makers=[
        materials.basic_music_maker,
        ],
    )

percussion_drum_context_maker = makers.ContextMaker(
    context_name='Percussion Drum Voice',
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

### SEGMENT DEFINITION ###

segment_maker = makers.SegmentMaker(
    context_map=context_map,
    is_final_segment=False,
    measure_segmentation_talea=measure_segmentation_talea,
    permitted_time_signatures=permitted_time_signatures,
    segment_tempo=segment_tempo,
    context_makers=(
        guitar_context_maker,
        percussion_drum_context_maker,
        percussion_shaker_context_maker,
        percussion_woodblock_context_maker,
        piano_dynamics_context_maker,
        piano_lh_context_maker,
        piano_pedals_context_maker,
        piano_rh_context_maker,
        saxophone_context_maker,
        )
    )
