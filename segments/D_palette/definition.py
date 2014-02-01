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
permitted_time_signatures = materials.prime_time_signatures
segment_tempo = indicatortools.Tempo(durationtools.Duration(1, 4), 96)

### CONTEXT MAP ###

score_template = score_templates.PlagueWaterScoreTemplate()
score = score_template()
context_map = datastructuretools.ContextMap(score_template)
context_map[score]['minimum_timespan_duration'] = durationtools.Duration(1, 8)
context_map[score]['pitch_class_maker'] = makers.PitchClassMaker(
    pitch_class_ratio=(1, 1, 1),
    pitch_class_talea=(
        [0, 3, 2, 5, 11, 1],
        [2, 8, 10, 11],
        [1, 4],
        ),
    transform_ratio=None,
    transform_talea=None,
    )

### MUSIC MAKERS ###

### BRUSHES ###

guitar_brush = makers.Brush(
    music_makers=[
        makers.MusicMaker(
            leading_rest_durations=materials.short_durations(1),
            playing_durations=materials.very_short_durations(2),
            playing_groupings=materials.short_groupings(3),
            ),
        ]
    )

saxophone_brush = makers.Brush(
    music_makers=[
        makers.MusicMaker(
            leading_rest_durations=materials.short_durations(4),
            playing_durations=materials.short_durations(5),
            playing_groupings=materials.short_groupings(6),
            ),
        ],
    )

piano_rh_brush = makers.Brush(
    music_makers=[
        makers.MusicMaker(
            leading_rest_durations=materials.medium_durations(7),
            playing_durations=materials.medium_durations(8),
            playing_groupings=materials.short_groupings(9),
            ),
        ],
    )

piano_lh_brush = makers.Brush(
    music_makers=[
        makers.MusicMaker(
            leading_rest_durations=materials.medium_durations(10),
            playing_durations=materials.medium_durations(11),
            playing_groupings=materials.short_groupings(12),
            ),
        ],
    )

percussion_rh_brush = makers.Brush(
    music_makers=[
        makers.MusicMaker(
            leading_rest_durations=materials.medium_durations(13),
            playing_durations=materials.short_durations(14),
            playing_groupings=[1],
            ),
        ],
    )

percussion_lh_brush = makers.Brush(
    music_makers=[
        makers.MusicMaker(
            leading_rest_durations=materials.medium_durations(15),
            playing_durations=materials.short_durations(16),
            playing_groupings=[1],
            ),
        ],
    )

### SEGMENT DEFINITION ###

segment_maker = makers.SegmentMaker(
    context_map=context_map,
    guitar_brush=guitar_brush,
    is_final_segment=False,
    measure_segmentation_talea=measure_segmentation_talea,
    percussion_rh_brush=percussion_rh_brush,
    percussion_lh_brush=percussion_lh_brush,
    permitted_time_signatures=permitted_time_signatures,
    piano_lh_brush=piano_lh_brush,
    piano_rh_brush=piano_rh_brush,
    saxophone_brush=saxophone_brush,
    segment_tempo=segment_tempo,
    )
