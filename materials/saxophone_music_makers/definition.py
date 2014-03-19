# -*- encoding: utf-8 -*-
from abjad import *
from plague_water import makers
from plague_water.materials import durations
from plague_water.materials import rhythm_makers


saxophone_droning_music_maker = makers.MusicMaker(
    dynamic_agent=makers.DynamicAgent(),
    rhythm_maker=rhythm_makers.droning_rhythm_maker,
    spanner_agent=makers.SpannerAgent(
        output_spanners=(
            spannertools.Slur,
            ),
        ),
    )


saxophone_fanfare_music_maker = makers.MusicMaker(
    dynamic_agent=makers.DynamicAgent(),
    indicator_agent=makers.IndicatorAgent(
        first_leaf_indicators=('accent',),
        inner_leaf_indicators=('staccato',),
        ),
    rhythm_maker=rhythm_makers.fanfare_rhythm_maker,
    timespan_agent=makers.SemanticTimespanAgent(
        playing_durations=durations.very_short_durations,
        playing_groupings=durations.short_groupings,
        ),
    )

saxophone_pointillist_music_maker = makers.MusicMaker(
    dynamic_agent=makers.DynamicAgent(),
    indicator_agent=makers.IndicatorAgent(
        each_leaf_indicators=(
            'accent',
            'staccato',
            'staccato',
            'accent',
            'staccato',
            ),
        ),
    rhythm_maker=rhythm_makers.pointillist_rhythm_maker,
    timespan_agent=makers.SemanticTimespanAgent(
        playing_durations=durations.short_durations,
        playing_groupings=durations.short_groupings,
        ),
    )


saxophone_trilling_music_maker = makers.MusicMaker(
    dynamic_agent=makers.DynamicAgent(),
    rhythm_maker=rhythm_makers.flowing_rhythm_maker,
    spanner_agent=makers.SpannerAgent(
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
        ),
    timespan_agent=makers.SemanticTimespanAgent(
        playing_durations=durations.medium_durations,
        playing_groupings=durations.short_groupings,
        ),
    )


saxophone_winding_music_maker = makers.MusicMaker(
    dynamic_agent=makers.DynamicAgent(),
    rhythm_maker=rhythm_makers.winding_rhythm_maker,
    spanner_agent=makers.SpannerAgent(
        output_spanners=(
            spannertools.Slur,
            ),
        ),
    timespan_agent=makers.SemanticTimespanAgent(
        playing_durations=durations.short_durations,
        playing_groupings=durations.medium_groupings,
        ),
    )


__all__ = (
    'saxophone_droning_music_maker',
    'saxophone_fanfare_music_maker',
    'saxophone_pointillist_music_maker',
    'saxophone_trilling_music_maker',
    'saxophone_winding_music_maker',
    )
