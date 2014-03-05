# -*- encoding: utf-8 -*-
from abjad import *
from plague_water import makers
from plague_water import materials
from plague_water import templates

### SEGMENT PARAMETERS ###

measure_segmentation_talea = (1,)
permitted_time_signatures = materials.mixed_time_signatures
segment_tempo = indicatortools.Tempo(durationtools.Duration(1, 8), 48)

### CONTEXT MAP ###

score_template = templates.PlagueWaterScoreTemplate()
score = score_template()
context_map = datastructuretools.ContextMap(score_template)
context_map[score]['pitch_agent'] = materials.primary_pitch_class_agent

### PREFACE ###

timespan_agent = makers.ConstantStepTimespanAgent(
    minimum_timespan_duration=durationtools.Duration(1, 8),
    step_durations=(
        durationtools.Duration(5, 8),
        durationtools.Duration(7, 8),
        durationtools.Duration(9, 8),
        ),
    )

### SEMANTIC CONTEXT MAKERS ###

saxophone_context_maker = makers.ContextMaker(
    context_name='Saxophone Voice',
    music_makers=[
        makers.MusicMaker(
            dynamic_agent=makers.DynamicAgent(
                initial_dynamic_expressions=(
                    makers.DynamicExpression('p', 'o'),
                    makers.DynamicExpression('ppp', 'o'),
                    makers.DynamicExpression('pp', 'o'),
                    ),
                ),
            grace_maker=makers.GraceMaker(
                lengths=(1, 0, 0),
                ),
            indicator_agent=makers.IndicatorAgent(
                each_leaf_indicators=(
                    ('staccatissimo',),
                    ('snappizzicato',),
                    ('snappizzicato', 'accent'),
                    ('staccatissimo',),
                    ),
                ),
            pitch_agent=materials.drum_pitch_agent,
            rhythm_maker=materials.pointillist_rhythm_maker.rotate(1),
            timespan_agent=new(timespan_agent,
                playing_durations=materials.make_durations(2, 3)(2),
                playing_groupings=[1, 1, 2],
                ),
            ),
        ]
    )

guitar_context_maker = makers.ContextMaker(
    context_name='Guitar Voice',
    initial_indicators=(
        Markup(r'\box \pad-around #0.5 \large \bold \caps "Color Six"', Up),
        ),
    music_makers=[
        makers.MusicMaker(
            chord_agent=materials.guitar_chord_agent.rotate(1),
            dynamic_agent=makers.DynamicAgent(
                initial_dynamic_expressions=(
                    makers.DynamicExpression('ppp', 'o'),
                    makers.DynamicExpression('pp', 'o'),
                    makers.DynamicExpression('p', 'o'),
                    ),
                ),
            grace_maker=makers.GraceMaker(
                lengths=(1, 0),
                ),
            indicator_agent=makers.IndicatorAgent(
                each_leaf_indicators=('staccatissimo',),
                ),
            pitch_agent=materials.drum_pitch_agent,
            rhythm_maker=materials.pointillist_rhythm_maker.rotate(0),
            timespan_agent=new(timespan_agent,
                playing_durations=materials.make_durations(2, 3)(1),
                playing_groupings=[1, 2],
                ),
            ),
        ]
    )

piano_rh_context_maker = makers.ContextMaker(
    context_name='Piano RH Voice',
    music_makers=[
        makers.MusicMaker(
            chord_agent=materials.rare_chord_agent,
            dynamic_agent=makers.DynamicAgent(
                initial_dynamic_expressions=(
                    makers.DynamicExpression('pp', 'o'),
                    makers.DynamicExpression('p', 'o'),
                    makers.DynamicExpression('ppp', 'o'),
                    ),
                ),
            indicator_agent=makers.IndicatorAgent(
                each_leaf_indicators=('staccatissimo',),
                ),
            labels='pedaled',
            pitch_agent=materials.drum_pitch_agent,
            rhythm_maker=materials.pointillist_rhythm_maker.rotate(2),
            timespan_agent=new(timespan_agent,
                playing_durations=materials.make_durations(2, 3)(3),
                playing_groupings=[2, 1],
                ),
            ),
        ],
    )

piano_lh_context_maker = makers.ContextMaker(
    context_name='Piano LH Voice',
    music_makers=[
        makers.MusicMaker(
            chord_agent=materials.rare_chord_agent.rotate(1),
            dynamic_agent=makers.DynamicAgent(
                initial_dynamic_expressions=(
                    makers.DynamicExpression('p', 'o'),
                    makers.DynamicExpression('ppp', 'o'),
                    makers.DynamicExpression('pp', 'o'),
                    ),
                ),
            indicator_agent=makers.IndicatorAgent(
                each_leaf_indicators=('staccatissimo',),
                ),
            labels='pedaled',
            pitch_agent=materials.drum_pitch_agent,
            rhythm_maker=materials.pointillist_rhythm_maker.rotate(3),
            timespan_agent=new(timespan_agent,
                playing_durations=materials.make_durations(2, 3)(4),
                playing_groupings=[1, 2, 1],
                ),
            ),
        ],
    )

percussion_shaker_context_maker = makers.ContextMaker(
    context_name='Percussion Shaker Voice',
    music_makers=[
        makers.MusicMaker(
            dynamic_agent=makers.DynamicAgent(
                initial_dynamic_expressions=(
                    makers.DynamicExpression('ppp', 'o'),
                    makers.DynamicExpression('p', 'o'),
                    makers.DynamicExpression('pp', 'o'),
                    ),
                ),
            indicator_agent=makers.IndicatorAgent(
                each_leaf_indicators=('staccatissimo',),
                ),
            pitch_agent=materials.drum_pitch_agent,
            rhythm_maker=materials.pointillist_rhythm_maker.rotate(4),
            timespan_agent=new(timespan_agent,
                playing_durations=materials.make_durations(2, 3)(5),
                playing_groupings=[1, 1, 2, 1],
                ),
            ),
        ],
    )

percussion_woodblock_context_maker = makers.ContextMaker(
    context_name='Percussion Woodblock Voice',
    music_makers=[
        materials.silent_music_maker,
        ],
    )

percussion_drum_context_maker = makers.ContextMaker(
    context_name='Percussion Drum Voice',
    initial_indicators=(
        Markup(r'''\box \pad-around #0.5 \large \bold \caps
            "Styrofoam"
            ''', Up),
        ),
    music_makers=[
        makers.MusicMaker(
            dynamic_agent=materials.midground_dynamic_agent,
            grace_maker=makers.GraceMaker(
                lengths=(1, 0),
                ),
            pitch_agent=materials.drum_pitch_agent,
            rhythm_maker=materials.flowing_rhythm_maker,
            timespan_agent=new(timespan_agent,
                playing_durations=materials.long_durations(1),
                playing_groupings=materials.medium_groupings(),
                ),
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
        piano_pedals_context_maker,
        piano_rh_context_maker,
        saxophone_context_maker,
        ),
    context_map=context_map,
    is_final_segment=False,
    measure_segmentation_talea=measure_segmentation_talea,
    permitted_time_signatures=permitted_time_signatures,
    segment_tempo=segment_tempo,
    )
