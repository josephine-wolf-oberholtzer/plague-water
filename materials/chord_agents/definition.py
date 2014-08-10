# -*- encoding: utf-8 -*-
from abjad import *
from plague_water import makers
from plague_water.materials.pitch_classes import pitch_class_segments


chord_expressions = (
    makers.ChordExpression(interval_numbers=[3]),
    makers.ChordExpression(interval_numbers=[3]),
    makers.ChordExpression(interval_numbers=[3, 5]),
    makers.ChordExpression(interval_numbers=[-1, 3]),
    makers.ChordExpression(interval_numbers=[3]),
    makers.ChordExpression(interval_numbers=[3]),
    makers.ChordExpression(interval_numbers=[-1, 2]),
    makers.ChordExpression(interval_numbers=[3]),
    makers.ChordExpression(interval_numbers=[3]),
    makers.ChordExpression(interval_numbers=[5]),
    )

cluster_expressions = (
    makers.KeyClusterExpression(),
    makers.KeyClusterExpression(include_white_keys=False),
    makers.KeyClusterExpression(),
    makers.KeyClusterExpression(include_black_keys=False),
    )


pitch_class_segments = [x for x in pitch_class_segments if len(x) < 5]
guitar_interval_numbers = []
for pitch_class_segment in pitch_class_segments:
    smallest_vertical_segment = pitch_class_segment.voice_vertically()
    smallest_width = (
        max(smallest_vertical_segment) - min(smallest_vertical_segment)
        ).semitones
    for i in range(1, len(pitch_class_segment)):
        pitch_class_segment = pitch_class_segment.rotate(1)
        vertical_segment = pitch_class_segment.voice_vertically()
        width = (
            max(vertical_segment) - min(vertical_segment)
            ).semitones
        if width < smallest_width:
            smallest_vertical_segment = vertical_segment
            smallest_width = width
    center_index = len(smallest_vertical_segment) / 2
    interval_numbers = [smallest_vertical_segment[center_index] - x
        for x in smallest_vertical_segment]
    interval_numbers = [x.semitones for x in interval_numbers]
    pruned_interval_numbers = [interval_numbers[0]]
    for interval_number in interval_numbers[1:]:
        if 5 <= abs(pruned_interval_numbers[-1] - interval_number):
            pruned_interval_numbers.append(interval_number)
    guitar_interval_numbers.append(tuple(pruned_interval_numbers))


guitar_chord_expressions = []
for interval_numbers in guitar_interval_numbers:
    arpeggio_direction = None
    if 2 < len(interval_numbers):
        arpeggio_direction = Center
    chord_expression = makers.ChordExpression(
        arpeggio_direction=arpeggio_direction,
        interval_numbers=interval_numbers,
        )
    guitar_chord_expressions.append(chord_expression)


sequences = []
for i, sequence in enumerate(
    sequencetools.partition_sequence_by_ratio_of_lengths(
        guitar_chord_expressions, [1] * 4)):
    sequences.extend(sequence)
    sequences.extend([None] * i)


guitar_chord_agent = makers.ChordAgent(
    ratio=(1, 1, 1),
    talea=tuple(tuple(x) for x in
        sequencetools.partition_sequence_by_ratio_of_lengths(
            sequences, (2, 3, 1))
        ),
    )


# mostly m3, rare P4 and M2, very rare cluster
domi_chord_agent = makers.ChordAgent(
    ratio=(1, 1, 1),
    talea=(
        (
            makers.ChordExpression(interval_numbers=[0, 3]),
            makers.ChordExpression(interval_numbers=[0, 3]),
            None,
            makers.ChordExpression(interval_numbers=[0, 3, 5]),
            makers.ChordExpression(interval_numbers=[-1, 0, 3]),
            makers.ChordExpression(interval_numbers=[0, 3]),
            makers.KeyClusterExpression(),
            makers.ChordExpression(interval_numbers=[0, 3]),
            None,
            makers.ChordExpression(interval_numbers=[-1, 0, 2]),
            None,
            makers.ChordExpression(interval_numbers=[0, 3]),
            makers.ChordExpression(interval_numbers=[-5, -2, 0, 3]),
            makers.ChordExpression(interval_numbers=[0, 5]),
            ),
        (
            makers.ChordExpression(interval_numbers=[0, 3]),
            None,
            makers.ChordExpression(interval_numbers=[-1, 0, 2]),
            makers.ChordExpression(interval_numbers=[0, 3]),
            None,
            makers.ChordExpression(interval_numbers=[0, 3]),
            makers.KeyClusterExpression(),
            makers.ChordExpression(interval_numbers=[-5, 0, 3]),
            None,
            makers.ChordExpression(interval_numbers=[0, 5]),
            ),
        (
            None,
            makers.ChordExpression(interval_numbers=[0, 3]),
            makers.ChordExpression(interval_numbers=[0, 2, 3, 8]),
            None,
            makers.KeyClusterExpression(),
            makers.ChordExpression(interval_numbers=[0, 3, 5]),
            makers.KeyClusterExpression(
                staff_space_width=7,
                ),
            makers.ChordExpression(interval_numbers=[-1, 0, 3]),
            makers.ChordExpression(interval_numbers=[-2, 0, 3]),
            makers.ChordExpression(interval_numbers=[0, 3]),
            None,
            ),
        ),
    )

clusters_chord_agent = makers.ChordAgent(
    ratio=(1, 3, 1),
    talea=(
        (
            None,
            None,
            makers.KeyClusterExpression(),
            None,
            makers.KeyClusterExpression(
                include_black_keys=False,
                ),
            makers.KeyClusterExpression(
                include_black_keys=False,
                ),
            makers.KeyClusterExpression(
                include_white_keys=False,
                staff_space_width=9,
                ),
            makers.KeyClusterExpression(),
            ),
        (
            makers.KeyClusterExpression(
                staff_space_width=7,
                ),
            makers.KeyClusterExpression(),
            makers.KeyClusterExpression(
                include_black_keys=False,
                ),
            makers.KeyClusterExpression(),
            makers.KeyClusterExpression(
                include_white_keys=False,
                staff_space_width=9,
                ),
            None,
            ),
        (
            None,
            makers.KeyClusterExpression(
                include_black_keys=False,
                ),
            makers.KeyClusterExpression(
                staff_space_width=7,
                ),
            makers.KeyClusterExpression(),
            None,
            makers.KeyClusterExpression(
                include_white_keys=False,
                staff_space_width=9,
                ),
            None,
            None,
            makers.KeyClusterExpression(
                include_black_keys=False,
                ),
            ),
        ),
    )


rare_chord_agent = makers.ChordAgent(
    ratio=(1, 1, 1),
    talea=(
        (
            None,
            makers.ChordExpression(interval_numbers=[0, 3]),
            makers.ChordExpression(interval_numbers=[0, 2, 3, 8]),
            None,
            makers.KeyClusterExpression(),
            makers.ChordExpression(interval_numbers=[0, 3, 5]),
            makers.KeyClusterExpression(
                staff_space_width=7,
                ),
            makers.ChordExpression(interval_numbers=[-1, 0, 3]),
            makers.ChordExpression(interval_numbers=[-2, 0, 3]),
            makers.ChordExpression(interval_numbers=[0, 3]),
            None,
            ),
        (
            None,
            makers.ChordExpression(interval_numbers=[0, 3]),
            makers.ChordExpression(interval_numbers=[0, 2, 3, 8]),
            None,
            None,
            makers.KeyClusterExpression(),
            None,
            makers.ChordExpression(interval_numbers=[0, 3, 5]),
            makers.KeyClusterExpression(
                staff_space_width=7,
                ),
            makers.ChordExpression(interval_numbers=[-1, 0, 3]),
            None,
            None,
            makers.ChordExpression(interval_numbers=[-2, 0, 3]),
            makers.ChordExpression(interval_numbers=[0, 3]),
            None,
            ),
        (
            None,
            makers.ChordExpression(interval_numbers=[0, 3]),
            makers.ChordExpression(interval_numbers=[0, 2, 3, 8]),
            None,
            None,
            None,
            makers.KeyClusterExpression(),
            None,
            None,
            makers.ChordExpression(interval_numbers=[0, 3, 5]),
            None,
            None,
            makers.KeyClusterExpression(
                staff_space_width=7,
                ),
            makers.ChordExpression(interval_numbers=[-1, 0, 3]),
            None,
            None,
            makers.ChordExpression(interval_numbers=[0, 3]),
            makers.ChordExpression(interval_numbers=[-2, 0, 3]),
            None,
            None,
            makers.KeyClusterExpression(
                staff_space_width=7,
                ),
            ),
        ),
    )


__all__ = (
    'domi_chord_agent',
    'clusters_chord_agent',
    'guitar_chord_agent',
    'rare_chord_agent',
    )