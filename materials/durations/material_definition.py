# -*- encoding: utf-8 -*-
from abjad.tools import datastructuretools
from abjad.tools import durationtools
from plague_water.materials import euler_numbers


def remap_sequence_by_range_pairs(sequence, range_pairs):
    result = []
    for old_element in sequence:
        new_element = old_element
        for input_range, output_range in range_pairs:
            input_low, input_high = input_range
            if input_low <= old_element <= input_high:
                output_low, output_high = output_range
                output_difference = output_high - output_low
                new_element -= input_low
                new_element %= (output_difference + 1)
                new_element += output_low
        result.append(new_element)
    return type(sequence)(result)

denominator = 16

long_groupings = datastructuretools.StatalServer(
    remap_sequence_by_range_pairs(
        euler_numbers.euler_hundreds,
        [
            ((0, 33), (1, 5)),
            ((34, 66), (3, 5)),
            ((67, 99), (3, 6)),
            ],
        )
    )

medium_groupings = datastructuretools.StatalServer(
    remap_sequence_by_range_pairs(
        euler_numbers.euler_hundreds,
        [
            ((0, 99), (1, 5)),
            ],
        )
    )

short_groupings = datastructuretools.StatalServer(
    remap_sequence_by_range_pairs(
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
    remap_sequence_by_range_pairs(
        euler_numbers.euler_hundreds,
        [
            ((0, 49), (6, 12)),
            ((50, 99), (9, 13)),
            ],
        )
    ))

medium_durations = datastructuretools.StatalServer((
    durationtools.Duration(x, denominator) for x in
    remap_sequence_by_range_pairs(
        euler_numbers.euler_hundreds,
        [
            ((0, 99), (4, 8)),
            ],
        )
    ))

short_durations = datastructuretools.StatalServer((
    durationtools.Duration(x, denominator) for x in
    remap_sequence_by_range_pairs(
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
    remap_sequence_by_range_pairs(
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
