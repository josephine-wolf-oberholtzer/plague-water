# -*- encoding: utf-8 -*-
from abjad import *
from plague_water import callables
from plague_water import materials


class Segment(callables.SegmentMaker):

    measure_segmentation_talea = (1,)

    minimum_timespan_duration = Duration(3, 16)

    permitted_time_signatures = datastructuretools.TypedList(
        [
            (5, 16),
            (3, 8),
            (7, 16),
            (2, 4),
            (4, 8),
            (5, 8),
            (3, 4),
            (6, 8),
            ],
        item_class=TimeSignature,
        )

    playing_duration_cursor = materials.medium_duration_server()

    playing_grouping_cursor = materials.medium_grouping_server()

    resting_duration_cursor = materials.medium_duration_server(reverse=True)

    segment_name = 'Segment One'

    segment_target_duration = Duration(8)

    tempo = materials.tempo_inventory[0]


if __name__ == '__main__':
    segment = Segment()
    segment.build_and_persist(__file__)
