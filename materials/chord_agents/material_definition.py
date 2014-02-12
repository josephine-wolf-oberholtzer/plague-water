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
            makers.ChordExpression(interval_numbers=[3]),
            None,
            makers.KeyClusterExpression(),
            makers.ChordExpression(interval_numbers=[3, 5]),
            makers.KeyClusterExpression(),
            makers.ChordExpression(interval_numbers=[-1, 3]),
            makers.ChordExpression(interval_numbers=[-2, 3]),
            makers.ChordExpression(interval_numbers=[3]),
            None,
            ),
        ),
    )

increasing_clusters_chord_agent = makers.ChordAgent(
    ratio=(1, 1, 1),
    talea=(
        (
            ),
        (
            ),
        (
            ),
        ),
    )


decreasing_clusters_chord_agent = makers.ChordAgent(
    ratio=(1, 1, 1),
    talea=(
        (
            ),
        (
            ),
        (
            ),
        ),
    )


rare_chord_agent = makers.ChordAgent(
    ratio=(1, 1, 1),
    talea=(
        [
            ],
        [
            ],
        [
            ],
        ),
    )


__all__ = (
    'domi_chord_agent',
    'decreasing_clusters_chord_agent',
    'increasing_clusters_chord_agent',
    'rare_chord_agent',
    )
