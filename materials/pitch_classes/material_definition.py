# -*- encoding: utf-8 -*-
import os
from abjad import *


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


def illustrate(sequences):
    voice = scoretools.Voice()
    voice.consists_commands.append('Horizontal_bracket_engraver')
    for sequence_group in sequences:
        grouped_containers = []
        for sequence in sequence_group:
            containers = []
            for subsequence in sequence:
                notes = [scoretools.Note(x, (1, 32)) for x in subsequence]
                container = scoretools.Container(notes)
                bracket = spannertools.HorizontalBracketSpanner()
                topleveltools.attach(bracket, container)
                voice.append(container)
                containers.append(container)
            bracket = spannertools.HorizontalBracketSpanner()
            topleveltools.attach(bracket, containers)
            grouped_containers.extend(containers)
        bracket = spannertools.HorizontalBracketSpanner()
        topleveltools.attach(bracket, grouped_containers)
    lilypond_file = lilypondfiletools.make_basic_lilypond_file(voice)
    stylesheet_path = os.path.join(
        abjad_configuration.abjad_stylesheets_directory_path,
        'gallery-layout.ly',
        )
    lilypond_file.file_initial_user_includes.append(stylesheet_path)
    stylesheet_path = os.path.join(
        abjad_configuration.abjad_stylesheets_directory_path,
        'pitch-class-layout.ly',
        )
    lilypond_file.file_initial_user_includes.append(stylesheet_path)
    return lilypond_file

lilypond_file = illustrate(all_rotated_sequences)


__all__ = (
    'all_rotated_sequences',
    )
