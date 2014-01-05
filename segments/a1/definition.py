# -*- encoding: utf-8 -*-
from abjad import *
from plague_water import makers
from plague_water import materials


segment_target_duration = Duration(6)

segment_tempo = materials.tempo_inventory[0]

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

saxophone_brush = makers.Brush([
    makers.BrushComponent(),
    ])

segment_maker = makers.SegmentMaker(
    guitar_brush=guitar_brush,
    guitar_lifeline_strategy=guitar_lifeline_strategy,
    percussion_lh_brush=percussion_lh_brush,
    percussion_rh_brush=percussion_rh_brush,
    piano_lh_brush=piano_lh_brush,
    piano_lifeline_strategy=piano_lifeline_strategy,
    piano_rh_brush=piano_rh_brush,
    saxophone_brush=saxophone_brush,
    segment_target_duration=segment_target_duration,
    segment_tempo=segment_tempo,
    )


if __name__ == '__main__':
    segment_maker.build_and_persist(__file__)
