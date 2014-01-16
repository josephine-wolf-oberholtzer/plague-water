# -*- encoding: utf-8 -*-
from abjad import *


proportions = [3, 1, 6, 2]
proportions = [x * 3 for x in proportions]
ratio = [2, 1]
proportions = sequencetools.flatten_sequence(
    [
        (1, mathtools.divide_number_by_ratio(x, ratio))
        for x in proportions
        ],
    )
proportions = [int(x) for x in proportions]
proportions = proportions + [5]
proportions = [x * 2 for x in proportions]
proportions = sequencetools.flatten_sequence(
    [
        (1, shard) for shard in
        sequencetools.partition_sequence_by_counts(
            proportions,
            [4],
            cyclic=True,
            overhang=True)
        ],
    )
proportions = sequencetools.increase_sequence_elements_cyclically_by_addenda(
    proportions,
    [1, 1, 0],
    )

__all__ = (
    'proportions',
    )
