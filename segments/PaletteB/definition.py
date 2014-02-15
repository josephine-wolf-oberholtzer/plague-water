# -*- encoding: utf-8 -*-
from abjad import *
from plague_water import makers
from plague_water import materials
from plague_water import score_templates

### SEGMENT PARAMETERS ###

measure_segmentation_talea = (1,)
permitted_time_signatures = materials.round_time_signatures
segment_tempo = indicatortools.Tempo(durationtools.Duration(1, 4), 80)

### CONTEXT MAP ###

score_template = score_templates.PlagueWaterScoreTemplate()
score = score_template()
context_map = datastructuretools.ContextMap(score_template)
context_map[score]['pitch_agent'] = materials.primary_pitch_class_agent

### SEMANTIC CONTEXT MAKERS ###

saxophone_context_maker = makers.ContextMaker(
    context_name='Saxophone Voice',
    music_maker_indices=(0, 0, 1, 0, 0),
    music_makers=[
        makers.MusicMaker(
            dynamic_agent=materials.midground_dynamic_agent,
            grace_maker=makers.GraceMaker(
                lengths=(1, 0, 1, 0, 0, 1, 2,),
                ),
            rhythm_maker=materials.winding_rhythm_maker,
            spanner_agent=materials.trilling_sparsely_spanner_agent,
            timespan_agent=materials.sustained_medium_timespan_agent,
            ),
        makers.MusicMaker(
            dynamic_agent=materials.midground_dynamic_agent,
            grace_maker=makers.GraceMaker(
                lengths=(1, 0, 1, 0, 0, 1, 2,),
                ),
            rhythm_maker=materials.flowing_rhythm_maker,
            spanner_agent=materials.trilling_sparsely_spanner_agent,
            timespan_agent=materials.sustained_medium_timespan_agent,
            ),
        ],
    )

guitar_context_maker = makers.ContextMaker(
    context_name='Guitar Voice',
    initial_indicators=(
        Markup(r'\box \pad-around #0.5 \large \bold \caps "Color Two"', Up),
        ),
    music_maker_indices=(0, 0, 0, 1, 0),
    music_makers=[
        makers.MusicMaker(
            dynamic_agent=materials.midground_dynamic_agent,
            grace_maker=makers.GraceMaker(
                lengths=(1, 0, 1, 0, 0, 1, 2,),
                ),
            rhythm_maker=materials.winding_rhythm_maker,
            spanner_agent=materials.trilling_sparsely_spanner_agent,
            timespan_agent=materials.sustained_medium_timespan_agent,
            ),
        makers.MusicMaker(
            dynamic_agent=materials.midground_dynamic_agent,
            grace_maker=makers.GraceMaker(
                lengths=(1, 0, 1, 0, 0, 1, 2,),
                ),
            rhythm_maker=materials.flowing_rhythm_maker,
            spanner_agent=materials.trilling_sparsely_spanner_agent,
            timespan_agent=materials.sustained_medium_timespan_agent,
            ),
        ],
    )

piano_rh_context_maker = makers.ContextMaker(
    context_name='Piano RH Voice',
    music_makers=[
        makers.MusicMaker(
            dynamic_agent=materials.background_dynamic_agent,
            rhythm_maker=materials.pointillist_rhythm_maker,
            timespan_agent=materials.pointillist_sparse_timespan_agent,
            ),
        ],
    )

piano_lh_context_maker = makers.ContextMaker(
    context_name='Piano LH Voice',
    music_makers=[
        makers.MusicMaker(
            dynamic_agent=materials.background_dynamic_agent,
            rhythm_maker=materials.pointillist_rhythm_maker,
            timespan_agent=materials.pointillist_sparse_timespan_agent,
            ).transform_cursors(1),
        ],
    )

percussion_shaker_context_maker = makers.ContextMaker(
    context_name='Percussion Shaker Voice',
    music_makers=[
        makers.MusicMaker(
            dynamic_agent=materials.background_dynamic_agent,
            pitch_agent=new(materials.shaker_pitch_agent,
                talea=(0, 3, 1, 2, 3, 2, 0, 1, 3),
                ),
            rhythm_maker=materials.pointillist_rhythm_maker,
            timespan_agent=materials.pointillist_sparse_timespan_agent,
            ).transform_cursors(1),
        ],
    )

percussion_woodblock_context_maker = makers.ContextMaker(
    context_name='Percussion Woodblock Voice',
    music_makers=[
        makers.MusicMaker(
            dynamic_agent=materials.background_dynamic_agent,
            grace_maker=makers.GraceMaker(
                lengths=(1, 0, 1, 2, 1, 0, 0, 0),
                ),
            pitch_agent=new(materials.woodblock_pitch_agent,
                talea=(0, 3, 1, 4, 2, 3, 2, 0, 4, 1, 3),
                ), 
            rhythm_maker=materials.pointillist_rhythm_maker,
            timespan_agent=new(
                materials.pointillist_sparse_timespan_agent,
                leading_rest_durations=None,
                tailing_rest_durations=materials.medium_durations(4),
                ),
            ),
        ],
    )

percussion_drum_context_maker = makers.ContextMaker(
    context_name='Percussion Drum Voice',
    music_makers=[
        materials.silent_music_maker,
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
        piano_lh_context_maker,
        piano_pedals_context_maker,
        piano_rh_context_maker,
        saxophone_context_maker,
        )
    )
