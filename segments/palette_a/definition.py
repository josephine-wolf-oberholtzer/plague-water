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
        pitchtools.PitchClassSegment([0, 0]),
        pitchtools.PitchClassSegment([0, 0]),
        ),
    #transform_ratio=(1, 1),
    #transform_talea=(
    #    makers.PitchClassTransformExpression(transposition=-1),
    #    None,
    #    ),
    )
context_map[score]['chord_maker'] = makers.ChordMaker(
    ratio=(1, 1),
    talea=(
        (
            None,
            makers.ChordExpression(interval_numbers=(-1, 3)),
            makers.ChordExpression(interval_numbers=(2,)),
            None,
            makers.ChordExpression(interval_numbers=(5,)),
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

piano_rh_brush = makers.Brush(
    initial_music_maker=None,
    music_makers=[
        materials.staggering_music_maker.__makenew__(
            registration_maker=makers.RegistrationMaker(
                global_inflection=makers.RegisterCurve(
                    ratio=(1,),
                    registers=(0, 24),
                    ),
                phrase_inflections=(
                    makers.RegisterCurve(
                        ratio=(1,),
                        registers=(-6, 6),
                        ),
                    makers.RegisterCurve(
                        ratio=(1,),
                        registers=(-6, 6),
                        ),
                    ),
                ),
            )
        ],
    )
piano_lh_brush = makers.Brush(
    initial_music_maker=None,
    music_makers=[
        materials.staggering_music_maker.__makenew__(
            registration_maker=makers.RegistrationMaker(
                global_inflection=makers.RegisterCurve(
                    ratio=(1,),
                    registers=(-12, -36),
                    ),
                phrase_inflections=(
                    makers.RegisterCurve(
                        ratio=(1,),
                        registers=(-6, 6),
                        ),
                    makers.RegisterCurve(
                        ratio=(1,),
                        registers=(-6, 6),
                        ),
                    ),
                ),
            )
        ],
    )

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
