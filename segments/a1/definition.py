# -*- encoding: utf-8 -*-
from abjad import *
from plague_water import makers
from plague_water import materials


### SEGMENT PARAMETERS ###

segment_target_duration = Duration(6)

segment_tempo = materials.tempo_inventory[0]

permitted_time_signatures = materials.time_signature_inventories[0]

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
    guitar_brush=guitar_brush,
    guitar_lifeline_strategy=guitar_lifeline_strategy,
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
