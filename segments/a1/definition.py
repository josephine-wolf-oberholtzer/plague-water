# -*- encoding: utf-8 -*-
from abjad import *
from plague_water import makers
from plague_water import materials


### SEGMENT PARAMETERS ###

segment_target_duration = Duration(6)

segment_tempo = materials.tempo_inventory[0]

permitted_time_signatures = [
    (5, 16),
    (7, 16),
    (2, 4),
    (4, 8),
    (5, 8),
    (3, 4),
    (6, 8),
    ]

### BRUSHES ###

guitar_brush = makers.Brush([
    makers.BrushComponent(
        music_maker=None,
        playing_durations=materials.medium_duration_server((0,)),
        playing_groupings=None,
        leading_rest_durations=None,
        tailing_rest_durations=None,
        weight=1,
        ),
    ])

piano_lh_brush = makers.Brush([
    makers.BrushComponent(
        music_maker=None,
        playing_durations=materials.medium_duration_server((1,)),
        playing_groupings=None,
        leading_rest_durations=None,
        tailing_rest_durations=None,
        weight=1,
        ),
    ])

piano_rh_brush = makers.Brush([
    makers.BrushComponent(
        music_maker=None,
        playing_durations=materials.medium_duration_server((2,)),
        playing_groupings=None,
        leading_rest_durations=None,
        tailing_rest_durations=None,
        weight=1,
        ),
    ])

percussion_lh_brush = makers.Brush([
    makers.BrushComponent(
        music_maker=None,
        playing_durations=materials.medium_duration_server((3,)),
        playing_groupings=None,
        leading_rest_durations=None,
        tailing_rest_durations=None,
        weight=1,
        ),
    ])

percussion_rh_brush = makers.Brush([
    makers.BrushComponent(
        music_maker=None,
        playing_durations=materials.medium_duration_server((4,)),
        playing_groupings=None,
        leading_rest_durations=None,
        tailing_rest_durations=None,
        weight=1,
        ),
    ])

saxophone_brush = makers.Brush([
    makers.BrushComponent(
        music_maker=None,
        playing_durations=materials.medium_duration_server((5,)),
        playing_groupings=None,
        leading_rest_durations=None,
        tailing_rest_durations=None,
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
