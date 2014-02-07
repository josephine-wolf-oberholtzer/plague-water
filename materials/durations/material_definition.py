# -*- encoding: utf-8 -*-
from abjad.tools import datastructuretools
from abjad.tools import durationtools
from plague_water import makers
from plague_water.materials import euler_numbers


denominator = 16

long_groupings = datastructuretools.StatalServer(
    makers.SegmentMaker.remap_sequence(
        euler_numbers.euler_hundreds,
        [
            ((0, 33), (1, 5)),
            ((34, 66), (3, 5)),
            ((67, 99), (3, 6)),
            ],
        )
    )

medium_groupings = datastructuretools.StatalServer(
    makers.SegmentMaker.remap_sequence(
        euler_numbers.euler_hundreds,
        [
            ((0, 99), (1, 5)),
            ],
        )
    )

short_groupings = datastructuretools.StatalServer(
    makers.SegmentMaker.remap_sequence(
        euler_numbers.euler_hundreds,
        [
            ((0, 33), (1, 1)),
            ((34, 66), (1, 2)),
            ((67, 99), (1, 3)),
            ],
        )
    )

long_durations = datastructuretools.StatalServer((
    durationtools.Duration(x, denominator) for x in
    makers.SegmentMaker.remap_sequence(
        euler_numbers.euler_hundreds,
        [
            ((0, 49), (6, 12)),
            ((50, 99), (9, 13)),
            ],
        )
    ))

medium_durations = datastructuretools.StatalServer((
    durationtools.Duration(x, denominator) for x in
    makers.SegmentMaker.remap_sequence(
        euler_numbers.euler_hundreds,
        [
            ((0, 99), (4, 8)),
            ],
        )
    ))

short_durations = datastructuretools.StatalServer((
    durationtools.Duration(x, denominator) for x in
    makers.SegmentMaker.remap_sequence(
        euler_numbers.euler_hundreds,
        [
            ((0, 33), (2, 2)),
            ((34, 66), (2, 4)),
            ((67, 99), (2, 5)),
            ],
        )
    ))

very_short_durations = datastructuretools.StatalServer((
    durationtools.Duration(x, denominator) for x in
    makers.SegmentMaker.remap_sequence(
        euler_numbers.euler_hundreds,
        [
            ((0, 33), (1, 1)),
            ((34, 66), (1, 2)),
            ((67, 99), (1, 4)),
            ],
        )
    ))

__all__ = (
    'long_durations',
    'long_groupings',
    'medium_durations',
    'medium_groupings',
    'short_durations',
    'short_groupings',
    'very_short_durations',
    )
