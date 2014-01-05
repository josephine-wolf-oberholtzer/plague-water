# -*- encoding: utf-8 -*-
from abjad import *
from plague_water import makers
from plague_water import materials


guitar_brush = makers.Brush([
    makers.BrushComponent(),
    ])

guitar_lifeline_strategy = None

piano_lh_brush = makers.Brush([
    makers.BrushComponent(),
    ])

piano_lifeline_strategy = None

piano_rh_brush = makers.Brush([
    makers.BrushComponent(),
    ])

percussion_lh_brush = makers.Brush([
    makers.BrushComponent(),
    ])

percussion_rh_brush = makers.Brush([
    makers.BrushComponent(),
    ])

permitted_time_signatures = [
    (2, 4),
    (3, 4),
    (4, 8),
    (5, 16),
    (5, 4),
    (5, 8),
    (6, 8),
    (7, 16),
    ]

saxophone_brush = makers.Brush([
    makers.BrushComponent(),
    ])

segment_target_duration = Duration(6)

segment_tempo = materials.tempo_inventory[0]

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


if __name__ == '__main__':
    segment_maker.build_and_persist(__file__)
