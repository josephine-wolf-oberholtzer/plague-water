# -*- encoding: utf-8 -*-
from abjad import *
from plague_water import makers


pitch_class_row = pitchtools.PitchClassSegment([0, 3, 2, 5, 11, 1])
ratios = [x for x in mathtools.yield_all_compositions_of_integer(
    len(pitch_class_row) // 2)
    ]
partitioned_sequences = [
    sequencetools.partition_sequence_by_ratio_of_lengths(
        pitch_class_row, ratio)
    for ratio in ratios
    ]


def remove_factors(old_divisors):
    new_divisors = []
    old_divisors = set(x for x in old_divisors if 1 < x)
    for x in old_divisors:
        keep = True
        for y in old_divisors:
            if 1 < x < y and x in mathtools.divisors(y)[1:]:
                keep = False
                break
        if keep:
            new_divisors.append(x)
    return new_divisors


all_rotated_sequences = []
for partitioned_sequence in partitioned_sequences:
    sequence_group = []
    lengths = [len(x) for x in partitioned_sequence]
    lengths = remove_factors(lengths)
    cumulative_product = mathtools.cumulative_products(lengths)[-1]
    for rotation_index in range(cumulative_product):
        new_sequence = []
        for old_part in partitioned_sequence:
            new_part = old_part.rotate(rotation_index)
            interval_of_transposition = float(old_part[0]) - float(new_part[0])
            new_part = new_part.transpose(interval_of_transposition)
            new_sequence.append(new_part)
        sequence_group.append(new_sequence)
    all_rotated_sequences.append(sequence_group)


sequence = sequencetools.flatten_sequence(all_rotated_sequences)
sequences = sequencetools.partition_sequence_by_ratio_of_lengths(
    sequence,
    [1, 1, 1],
    )
pitch_class_segments = sequencetools.zip_sequences(
    sequences,
    truncate=False,
    )
pitch_class_segments = sequencetools.flatten_sequence(pitch_class_segments)


primary_pitch_class_agent = makers.PitchClassAgent(
    pitch_class_ratio=(2, 1, 3, 1),
    pitch_class_talea=(
        pitchtools.PitchClassSegment([0, 3, 2, 5, 11, 1]),
        pitchtools.PitchClassSegment([11, 9]),
        pitchtools.PitchClassSegment([2, 4, 5, 8]),
        pitchtools.PitchClassSegment([0, 3, 5]),
        ),
    transform_ratio=(1, 3, 1, 1, 2, 1),
    transform_talea=(
        makers.PitchClassSegmentTransform(
            transposition=3,
            ),
        None,
        makers.PitchClassSegmentTransform(
            transposition=1,
            inversion=True,
            ),
        None,
        makers.PitchClassSegmentTransform(
            retrogression=True,
            ),
        makers.PitchClassSegmentTransform(
            transposition=-2,
            ),
        ),
    )


__all__ = (
    'pitch_class_segments',
    'primary_pitch_class_agent',
    )
