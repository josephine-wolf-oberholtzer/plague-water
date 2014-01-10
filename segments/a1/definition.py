# -*- encoding: utf-8 -*-
from abjad import *
from plague_water import makers
from plague_water import materials
from plague_water import score_templates

### CONTEXT HIERARCHY ###

context_hierarchy = datastructuretools.ContextHierarchy(
    score_templates.PlagueWaterScoreTemplate()(),
    )
context_hierarchy['Plague Water Score']['music_maker'] = makers.MusicMaker()
context_hierarchy['Plague Water Score']['playing_groupings'] = (1, 1)

### SEGMENT PARAMETERS ###

measure_segmentation_talea = (1,)
permitted_time_signatures = materials.time_signature_inventories[0]
segment_target_duration = Duration(6)
segment_tempo = materials.tempo_inventory[0]

### BRUSHES ###

guitar_brush = makers.Brush([
    makers.BrushComponent(
        music_maker=None,
        playing_durations=materials.medium_duration_server((0,)),
        playing_groupings=materials.short_grouping_server((10,)),
        leading_rest_durations=materials.short_duration_server((0,)),
        tailing_rest_durations=None,
        weight=1,
        ),
    ])

piano_lh_brush = makers.Brush([
    makers.BrushComponent(
        music_maker=None,
        playing_durations=materials.medium_duration_server((1,)),
        playing_groupings=None,
        leading_rest_durations=materials.short_duration_server((1,)),
        tailing_rest_durations=None,
        weight=1,
        ),
    ])

piano_rh_brush = makers.Brush([
    makers.BrushComponent(
        music_maker=None,
        playing_durations=materials.medium_duration_server((2,)),
        playing_groupings=materials.short_grouping_server((2,)),
        leading_rest_durations=None,
        tailing_rest_durations=materials.short_duration_server((2,)),
        weight=1,
        ),
    ])

percussion_lh_brush = makers.Brush([
    makers.BrushComponent(
        music_maker=None,
        playing_durations=materials.medium_duration_server((3,)),
        playing_groupings=None,
        leading_rest_durations=materials.short_duration_server((3,)),
        tailing_rest_durations=None,
        weight=1,
        ),
    ])

percussion_rh_brush = makers.Brush([
    makers.BrushComponent(
        music_maker=None,
        playing_durations=materials.medium_duration_server((4,)),
        playing_groupings=None,
        leading_rest_durations=materials.short_duration_server((4,)),
        tailing_rest_durations=None,
        weight=1,
        ),
    ])

saxophone_brush = makers.Brush([
    makers.BrushComponent(
        music_maker=None,
        playing_durations=materials.medium_duration_server((5,)),
        playing_groupings=materials.short_grouping_server,
        leading_rest_durations=materials.short_duration_server((5,)),
        tailing_rest_durations=materials.short_duration_server((10,)),
        weight=1,
        ),
    ])

### LIFELINE STRATEGIES ###

guitar_lifeline_strategy = None

piano_lifeline_strategy = None

### SEGMENT DEFINITION ###

segment_maker = makers.SegmentMaker(
    context_hierarchy=context_hierarchy,
    guitar_brush=guitar_brush,
    guitar_lifeline_strategy=guitar_lifeline_strategy,
    measure_segmentation_talea=measure_segmentation_talea,
    percussion_lh_brush=percussion_lh_brush,
    percussion_rh_brush=percussion_rh_brush,
    permitted_time_signatures=permitted_time_signatures,
    piano_lh_brush=piano_lh_brush,
    piano_lifeline_strategy=piano_lifeline_strategy,
    piano_rh_brush=piano_rh_brush,
    saxophone_brush=saxophone_brush,
    segment_target_duration=segment_target_duration,
    segment_tempo=segment_tempo,
    )

### MAIN ###

if __name__ == '__main__':
    segment_maker.build_and_persist(__file__)
