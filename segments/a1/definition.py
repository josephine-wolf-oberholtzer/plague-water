# -*- encoding: utf-8 -*-
from abjad import *
from plague_water import callables
from plague_water import materials


class Segment(callables.SegmentMaker):

    segment_name = 'Segment One'

    segment_target_duration = Duration(6)

    tempo = materials.tempo_inventory[0]

    ### VOICE-LEVEL VARIABLES ###

    guitar_brush = None

    guitar_lifeline_strategy = None

    piano_lh_brush = None

    piano_lifeline_strategy = None

    piano_rh_brush = None

    percussion_lh_brush = None

    percussion_rh_brush = None

    saxophone_brush = None


if __name__ == '__main__':
    segment = Segment()
    segment.build_and_persist(__file__)
