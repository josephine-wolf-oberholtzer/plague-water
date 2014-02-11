# -*- encoding: utf-8 -*-
from abjad import new
from abjad.tools import datastructuretools
from abjad.tools import durationtools
from abjad.tools import indicatortools
from plague_water import makers
from plague_water import materials
from plague_water import score_templates

### SEGMENT PARAMETERS ###

measure_segmentation_talea = (1,)
permitted_time_signatures = materials.mixed_time_signatures
segment_tempo = indicatortools.Tempo(durationtools.Duration(1, 8), 48)

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

### TIMESPAN AGENTS ###

short_timespan_agent = makers.SemanticTimespanAgent(
    leading_rest_durations=materials.short_durations(1),
    minimum_timespan_duration=durationtools.Duration(1, 8),
    playing_durations=materials.short_durations(2),
    playing_groupings=[1, 1, 1, 2],
    tailing_rest_durations=materials.medium_durations(2),
    )

medium_timespan_agent = makers.SemanticTimespanAgent(
    leading_rest_durations=materials.medium_durations(2),
    minimum_timespan_duration=durationtools.Duration(1, 8),
    playing_durations=materials.short_durations(8),
    playing_groupings=[1, 2, 1, 1, 1],
    tailing_rest_durations=materials.long_durations(5),
    )

long_timespan_agent = makers.SemanticTimespanAgent(
    leading_rest_durations=materials.long_durations(1),
    minimum_timespan_duration=durationtools.Duration(1, 8),
    playing_durations=materials.medium_durations(9),
    playing_groupings=[1, 2, 1, 1, 1, 2, 1, 2],
    tailing_rest_durations=materials.long_durations(4),
    )

### SEMANTIC CONTEXT MAKERS ###

guitar_context_maker = makers.ContextMaker(
    context_name='Guitar Voice',
    initial_music_maker=new(materials.basic_music_maker,
        grace_agent=makers.GraceAgent(
            lengths=(1, 0, 1, 0, 0, 1, 2,),
            ),
        rhythm_maker=materials.pointillist_rhythm_maker,
        timespan_agent=new(
            short_timespan_agent.transform_cursors(1),
            leading_rest_durations=None,
            ),
        ),
    music_maker_indices=(0, 1, 0, 0, 1),
    music_makers=[
        new(materials.basic_music_maker,
            grace_agent=makers.GraceAgent(
                lengths=(1, 0, 1, 0, 0, 1, 2,),
                ),
            rhythm_maker=materials.pointillist_rhythm_maker,
            timespan_agent=short_timespan_agent.transform_cursors(1),
            ),
        new(materials.basic_music_maker,
            rhythm_maker=materials.pointillist_rhythm_maker,
            timespan_agent=medium_timespan_agent.transform_cursors(2),
            ),
        ]
    )

saxophone_context_maker = makers.ContextMaker(
    context_name='Saxophone Voice',
    music_maker_indices=(0, 0, 1, 0, 1),
    music_makers=[
        new(materials.basic_music_maker,
            rhythm_maker=materials.pointillist_rhythm_maker,
            timespan_agent=short_timespan_agent.transform_cursors(3),
            ),
        new(materials.basic_music_maker,
            grace_agent=makers.GraceAgent(
                lengths=(1, 0, 1, 0, 0, 1, 2,),
                ),
            rhythm_maker=materials.pointillist_rhythm_maker,
            timespan_agent=new(
                medium_timespan_agent.transform_cursors(4),
                playing_groupings=materials.medium_groupings(1),
                ),
            ),
        ]
    )

piano_rh_context_maker = makers.ContextMaker(
    context_name='Piano RH Voice',
    music_maker_indices=(1, 0, 0, 1, 0),
    music_makers=[
        new(materials.basic_music_maker,
            grace_agent=makers.GraceAgent(
                lengths=(1, 0, 1, 0, 0, 1, 2,),
                ),
            rhythm_maker=materials.pointillist_rhythm_maker,
            timespan_agent=short_timespan_agent.transform_cursors(3),
            ),
        new(materials.basic_music_maker,
            grace_agent=makers.GraceAgent(
                lengths=(1, 0, 1, 0, 0, 1, 2,),
                ),
            rhythm_maker=materials.pointillist_rhythm_maker,
            timespan_agent=new(
                medium_timespan_agent.transform_cursors(3),
                playing_groupings=materials.medium_groupings(3),
                ),
            ),
        ],
    )

piano_lh_context_maker = makers.ContextMaker(
    context_name='Piano LH Voice',
    music_maker_indices=(0, 0, 1, 2, 0, 1, 0, 2),
    music_makers=[
        new(materials.basic_music_maker,
            grace_agent=makers.GraceAgent(
                lengths=(1, 0, 1, 0, 0, 1, 2,),
                ),
            rhythm_maker=materials.pointillist_rhythm_maker,
            timespan_agent=short_timespan_agent.transform_cursors(3),
            ),
        new(materials.basic_music_maker,
            grace_agent=makers.GraceAgent(
                lengths=(1, 0, 1, 0, 0, 1, 2,),
                ),
            rhythm_maker=materials.pointillist_rhythm_maker,
            timespan_agent=medium_timespan_agent.transform_cursors(3),
            ),
        ],
    )

percussion_shaker_context_maker = makers.ContextMaker(
    context_name='Percussion Shaker Voice',
    music_maker_indices=(0, 0, 1, 0, 1),
    music_makers=[
        new(materials.basic_music_maker,
            pitch_agent=materials.shaker_pitch_agent,
            rhythm_maker=materials.pointillist_rhythm_maker,
            timespan_agent=medium_timespan_agent.transform_cursors(9),
            ),
        new(materials.basic_music_maker,
            pitch_agent=materials.shaker_pitch_agent,
            rhythm_maker=materials.pointillist_rhythm_maker,
            timespan_agent=long_timespan_agent.transform_cursors(10),
            ),
        ],
    )

percussion_woodblock_context_maker = makers.ContextMaker(
    context_name='Percussion Woodblock Voice',
    music_makers=[
        new(materials.basic_music_maker,
            grace_agent=makers.GraceAgent(
                lengths=(1, 0, 1, 0, 0, 1, 2,),
                ),
            pitch_agent=materials.woodblock_pitch_agent,
            rhythm_maker=materials.pointillist_rhythm_maker,
            timespan_agent=long_timespan_agent.transform_cursors(11),
            ),
        ],
    )

percussion_drum_context_maker = makers.ContextMaker(
    context_name='Percussion Drum Voice',
    music_maker_indices=(0, 0, 1, 0, 1),
    music_makers=[
        new(materials.basic_music_maker,
            pitch_agent=materials.drum_pitch_agent,
            rhythm_maker=materials.pointillist_rhythm_maker,
            timespan_agent=medium_timespan_agent.transform_cursors(12),
            ),
        new(materials.basic_music_maker,
            pitch_agent=materials.drum_pitch_agent,
            rhythm_maker=materials.pointillist_rhythm_maker,
            timespan_agent=long_timespan_agent.transform_cursors((13, True)),
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
