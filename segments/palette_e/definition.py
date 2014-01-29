# -*- encoding: utf-8 -*-
from abjad.tools import datastructuretools
from abjad.tools import durationtools
from abjad.tools import indicatortools
from plague_water import makers
from plague_water import score_templates

### SEGMENT PARAMETERS ###

measure_segmentation_talea = (1,)
permitted_time_signatures = indicatortools.TimeSignatureInventory([(3, 8)])
segment_tempo = indicatortools.Tempo(durationtools.Duration(1, 4), 48)

### CONTEXT MAP ###

score_template = score_templates.PlagueWaterScoreTemplate()
context_map = datastructuretools.ContextMap(score_template)

### BRUSHES ###

guitar_brush = makers.Brush(
    initial_music_maker=None,
    music_makers=None,
    )

saxophone_brush = makers.Brush(
    initial_music_maker=None,
    music_makers=None,
    )

piano_rh_brush = makers.Brush(
    initial_music_maker=None,
    music_makers=None,
    )

piano_lh_brush = makers.Brush(
    initial_music_maker=None,
    music_makers=None,
    )

percussion_rh_brush = makers.Brush(
    initial_music_maker=None,
    music_makers=None,
    )

percussion_lh_brush = makers.Brush(
    initial_music_maker=None,
    music_makers=None,
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
