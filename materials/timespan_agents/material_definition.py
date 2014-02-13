# -*- encoding: utf-8 -*-
from abjad import *
from plague_water import makers
from plague_water.materials import durations


pointillist_dense_timespan_agent = makers.SemanticTimespanAgent(
    leading_rest_durations=durations.very_short_durations(1),
    minimum_timespan_duration=Duration(1, 8),
    playing_durations=durations.short_durations(2),
    playing_groupings=[1, 1, 1, 2],
    tailing_rest_durations=durations.short_durations(2),
    )


pointillist_sparse_timespan_agent = makers.SemanticTimespanAgent(
    leading_rest_durations=durations.long_durations(1),
    minimum_timespan_duration=Duration(1, 8),
    playing_durations=durations.medium_durations(9),
    playing_groupings=[1, 2, 1, 1, 1, 2, 1, 2],
    tailing_rest_durations=durations.long_durations(4),
    )


sustained_medium_timespan_agent = makers.SemanticTimespanAgent(
    leading_rest_durations=durations.very_short_durations(2),
    minimum_timespan_duration=Duration(1, 4),
    playing_durations=durations.medium_durations(8),
    playing_groupings=durations.short_groupings,
    tailing_rest_durations=durations.medium_durations(5),
    )


sustained_long_timespan_agent = makers.SemanticTimespanAgent(
    leading_rest_durations=durations.medium_durations(1),
    minimum_timespan_duration=Duration(1, 4),
    playing_durations=durations.long_durations(3),
    playing_groupings=durations.medium_groupings,
    tailing_rest_durations=durations.medium_durations(5),
    )


__all__ = (
    'pointillist_dense_timespan_agent',
    'pointillist_sparse_timespan_agent',
    'sustained_long_timespan_agent',
    'sustained_medium_timespan_agent',
    )
