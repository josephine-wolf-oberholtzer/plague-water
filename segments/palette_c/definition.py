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
permitted_time_signatures = materials.square_time_signatures
segment_tempo = indicatortools.Tempo(durationtools.Duration(1, 4), 80)

### CONTEXT MAP ###

score_template = score_templates.PlagueWaterScoreTemplate()
context_map = datastructuretools.ContextMap(score_template)

### MUSIC MAKERS ###

base_initial_music_maker = makers.MusicMaker(
    minimum_timespan_duration=durationtools.Duration(1, 8),
    playing_durations=materials.short_durations(),
    playing_groupings=materials.short_groupings(),
    )

base_music_maker = makers.MusicMaker(
    leading_rest_durations=materials.long_durations(),
    minimum_timespan_duration=durationtools.Duration(1, 8),
    playing_durations=materials.long_durations(),
    playing_groupings=materials.short_groupings(),
    )

### BRUSHES ###

guitar_brush = makers.Brush(
    initial_music_maker=None,
    music_maker_indices=(),
    music_makers=[
        new(base_music_maker,
            playing_durations=materials.short_durations(),
            tailing_rest_durations=materials.medium_durations((1,)),
            ),
        ],
    )

saxophone_brush = makers.Brush(
    initial_music_maker=new(
        base_initial_music_maker,
        playing_durations=materials.long_durations(),
        ),
    music_maker_indices=(),
    music_makers=[
        new(base_music_maker,
            leading_rest_durations=materials.short_durations((5,)),
            playing_durations=materials.long_durations(),
            playing_groupings=materials.medium_groupings(),
            ),
        ],
    )

piano_rh_brush = makers.Brush(
    initial_music_maker=None,
    music_maker_indices=(),
    music_makers=[
        new(base_music_maker,
            playing_durations=materials.short_durations(reverse=True),
            tailing_rest_durations=materials.medium_durations((2,)),
            ),
        ],
    )

piano_lh_brush = makers.Brush(
    initial_music_maker=None,
    music_maker_indices=(),
    music_makers=[
        new(base_music_maker,
            playing_durations=materials.short_durations((10,)),
            tailing_rest_durations=materials.medium_durations((3,)),
            ),
        ],
    )

percussion_rh_brush = makers.Brush(
    initial_music_maker=None,
    music_maker_indices=(),
    music_makers=[
        new(base_music_maker,
            playing_durations=materials.short_durations((20,)),
            tailing_rest_durations=materials.medium_durations((10,)),
            ),
        ],
    )

percussion_lh_brush = makers.Brush(
    initial_music_maker=base_initial_music_maker,
    music_maker_indices=(),
    music_makers=[
        new(base_music_maker,
            leading_rest_durations=materials.short_durations((8,)),
            playing_groupings=materials.medium_groupings(),
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
