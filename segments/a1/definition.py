# -*- encoding: utf-8 -*-
from abjad import *
from plague_water import makers
from plague_water import materials


class Segment(makers.SegmentMaker):

    ### SCORE-LEVEL VARIABLES ###

    segment_target_duration = Duration(6)

    tempo = materials.tempo_inventory[0]

    ### VOICE-LEVEL VARIABLES ###

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


if __name__ == '__main__':
    segment = Segment()
    segment.build_and_persist(__file__)
