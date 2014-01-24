# -*- encoding: utf-8 -*-
from abjad import *
from plague_water import makers
from plague_water import materials
from plague_water import score_templates

### SEGMENT PARAMETERS ###

measure_segmentation_talea = (1,)
permitted_time_signatures = materials.square_time_signatures
segment_tempo = indicatortools.Tempo(Duration(1, 4), 64)

### CONTEXT MAP ###

score_template = score_templates.PlagueWaterScoreTemplate()
score = score_template()
context_map = datastructuretools.ContextMap(score_template)
short_duration_cursor = materials.short_duration_server()
context_map[score]['pitch_class_maker'] = makers.PitchClassMaker(
    pitch_class_ratio=(2, 1, 2),
    pitch_class_talea=(
        pitchtools.PitchClassSegment([0, 0]),
        pitchtools.PitchClassSegment([2, 2]),
        pitchtools.PitchClassSegment([4, 4]),
        ),
    transform_ratio=(1, 6),
    transform_talea=(
        makers.PitchClassTransformExpression(transposition=-1),
        None,
        ),
    )
context_map[score]['chord_maker'] = makers.ChordMaker(
    ratio=(1, 1),
    talea=(
        (
            None,
            None,
            ),
        (
            None,
            makers.KeyClusterExpression(
                arpeggio_direction=Down,
                include_black_keys=False,
                staff_space_width=7,
                ),
            makers.KeyClusterExpression(),
            makers.ChordExpression(interval_numbers=(-1, 3)),
            makers.ChordExpression(interval_numbers=(2,)),
            ),
        ),
    )

### BRUSHES ###

piano_rh_brush = makers.Brush([
    new(materials.staggering_music_maker,
        )
    ])
piano_lh_brush = makers.Brush([
    new(materials.staggering_music_maker,
        )
    ])

### SEGMENT DEFINITION ###

segment_maker = makers.SegmentMaker(
    context_map=context_map,
    is_final_segment=False,
    measure_segmentation_talea=measure_segmentation_talea,
    permitted_time_signatures=permitted_time_signatures,
    piano_lh_brush=piano_lh_brush,
    piano_rh_brush=piano_rh_brush,
    segment_tempo=segment_tempo,
    )
