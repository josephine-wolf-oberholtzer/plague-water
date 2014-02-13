# -*- encoding: utf-8 -*-
from abjad import *
from plague_water import makers
from plague_water.materials import durations

trilling_constantly_spanner_agent = makers.SpannerAgent(
    cyclical_logical_tie_spanners=(
        spannertools.ComplexTrillSpanner(interval='+m3'),
        spannertools.ComplexTrillSpanner(interval='+P4'),
        spannertools.ComplexTrillSpanner(interval='+m3'),
        spannertools.ComplexTrillSpanner(interval='+P4'),
        spannertools.ComplexTrillSpanner(interval='+m2'),
        spannertools.ComplexTrillSpanner(interval='+m3'),
        spannertools.ComplexTrillSpanner(interval='+P4'),
        ),
    minimum_logical_tie_duration=Duration(1, 8),
    )

trilling_sparsely_spanner_agent = makers.SpannerAgent(
    cyclical_logical_tie_spanners=(
        None,
        spannertools.ComplexTrillSpanner(interval='+m3'),
        None,
        None,
        spannertools.ComplexTrillSpanner(interval='+P4'),
        None,
        spannertools.ComplexTrillSpanner(interval='+m3'),
        None,
        None,
        None,
        spannertools.ComplexTrillSpanner(interval='+P4'),
        spannertools.ComplexTrillSpanner(interval='+m2'),
        None,
        None,
        spannertools.ComplexTrillSpanner(interval='+m3'),
        None,
        spannertools.ComplexTrillSpanner(interval='+P4'),
        ),
    minimum_logical_tie_duration=Duration(1, 8),
    )

__all__ = (
    'trilling_constantly_spanner_agent',
    'trilling_sparsely_spanner_agent',
    )
