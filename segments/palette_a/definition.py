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
    pitch_class_ratio=(1, 1, 1),
    pitch_class_talea=(
        pitchtools.PitchClassSegment([0, 2, 4]),
        pitchtools.PitchClassSegment([5, 6]),
        pitchtools.PitchClassSegment([7, 8, 9, 10, 11]),
        )
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
