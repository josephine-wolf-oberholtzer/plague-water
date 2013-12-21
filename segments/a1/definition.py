# -*- encoding: utf-8 -*-
from abjad import *
from plague_water import callables


class Segment(callables.SegmentMaker):
    pass


if __name__ == '__main__':
    segment = Segment()
    segment.build_and_persist(__file__)
