# -*- encoding: utf-8 -*-
from abjad.tools import indicatortools
from plague_water import makers


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


# mostly m3, rare P4 and M2, very rare cluster
domi_chord_agent = makers.ChordAgent(
    ratio=(1, 1, 1),
    talea=(
        (
            makers.ChordExpression(interval_numbers=[3]),
            makers.ChordExpression(interval_numbers=[3]),
            None,
            makers.ChordExpression(interval_numbers=[3, 5]),
            makers.ChordExpression(interval_numbers=[-1, 3]),
            makers.ChordExpression(interval_numbers=[3]),
            makers.KeyClusterExpression(),
            makers.ChordExpression(interval_numbers=[3]),
            None,
            makers.ChordExpression(interval_numbers=[-1, 2]),
            None,
            makers.ChordExpression(interval_numbers=[3]),
            makers.ChordExpression(interval_numbers=[-5, -2, 3]),
            makers.ChordExpression(interval_numbers=[5]),
            ),
        (
            makers.ChordExpression(interval_numbers=[3]),
            None,
            makers.ChordExpression(interval_numbers=[-1, 2]),
            makers.ChordExpression(interval_numbers=[3]),
            None,
            makers.ChordExpression(interval_numbers=[3]),
            makers.KeyClusterExpression(),
            makers.ChordExpression(interval_numbers=[-5, 3]),
            None,
            makers.ChordExpression(interval_numbers=[5]),
            ),
        (
            None,
            makers.ChordExpression(interval_numbers=[3]),
            makers.ChordExpression(interval_numbers=[2, 3, 8]),
            None,
            makers.KeyClusterExpression(),
            makers.ChordExpression(interval_numbers=[3, 5]),
            makers.KeyClusterExpression(
                staff_space_width=7,
                ),
            makers.ChordExpression(interval_numbers=[-1, 3]),
            makers.ChordExpression(interval_numbers=[-2, 3]),
            makers.ChordExpression(interval_numbers=[3]),
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
            makers.ChordExpression(interval_numbers=[3]),
            makers.ChordExpression(interval_numbers=[2, 3, 8]),
            None,
            makers.KeyClusterExpression(),
            makers.ChordExpression(interval_numbers=[3, 5]),
            makers.KeyClusterExpression(
                staff_space_width=7,
                ),
            makers.ChordExpression(interval_numbers=[-1, 3]),
            makers.ChordExpression(interval_numbers=[-2, 3]),
            makers.ChordExpression(interval_numbers=[3]),
            None,
            ),
        (
            None,
            makers.ChordExpression(interval_numbers=[3]),
            makers.ChordExpression(interval_numbers=[2, 3, 8]),
            None,
            None,
            makers.KeyClusterExpression(),
            None,
            makers.ChordExpression(interval_numbers=[3, 5]),
            makers.KeyClusterExpression(
                staff_space_width=7,
                ),
            makers.ChordExpression(interval_numbers=[-1, 3]),
            None,
            None,
            makers.ChordExpression(interval_numbers=[-2, 3]),
            makers.ChordExpression(interval_numbers=[3]),
            None,
            ),
        (
            None,
            makers.ChordExpression(interval_numbers=[3]),
            makers.ChordExpression(interval_numbers=[2, 3, 8]),
            None,
            None,
            None,
            makers.KeyClusterExpression(),
            None,
            None,
            makers.ChordExpression(interval_numbers=[3, 5]),
            None,
            None,
            makers.KeyClusterExpression(
                staff_space_width=7,
                ),
            makers.ChordExpression(interval_numbers=[-1, 3]),
            None,
            None,
            makers.ChordExpression(interval_numbers=[3]),
            makers.ChordExpression(interval_numbers=[-2, 3]),
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
    'rare_chord_agent',
    )
