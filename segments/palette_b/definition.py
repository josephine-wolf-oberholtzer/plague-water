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
permitted_time_signatures = materials.round_time_signatures
segment_tempo = indicatortools.Tempo(durationtools.Duration(1, 4), 72)

### CONTEXT MAP ###

score_template = score_templates.PlagueWaterScoreTemplate()
context_map = datastructuretools.ContextMap(score_template)

### MUSIC MAKERS ###

base_initial_music_maker = makers.MusicMaker(
    minimum_timespan_duration=durationtools.Duration(1, 8),
    playing_durations=materials.short_duration_server(),
    playing_groupings=materials.short_grouping_server(),
    tailing_rest_durations=materials.very_short_duration_server(),
    )

base_music_maker = new(
    base_initial_music_maker,
    leading_rest_durations=materials.very_short_duration_server(),
    )

### BRUSHES ###

guitar_brush = makers.Brush(
    initial_music_maker=None,
    music_makers=[
        base_music_maker,
        ],
    )

saxophone_brush = makers.Brush(
    initial_music_maker=None,
    music_makers=[
        base_music_maker,
        ],
    )

piano_rh_brush = makers.Brush(
    initial_music_maker=None,
    music_makers=[
        base_music_maker,
        ],
    )

piano_lh_brush = makers.Brush(
    initial_music_maker=base_initial_music_maker,
    music_makers=[
        base_music_maker,
        ],
    )

percussion_rh_brush = makers.Brush(
    initial_music_maker=None,
    music_makers=[
        base_music_maker,
        ],
    )

percussion_lh_brush = makers.Brush(
    initial_music_maker=base_initial_music_maker,
    music_makers=[
        base_music_maker,
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
