# -*- encoding: utf-8 -*-
from abjad import *
from plague_water import makers
from plague_water.materials import durations
from plague_water.materials import rhythm_makers


guitar_fanfare_music_maker = makers.MusicMaker(
    dynamic_agent=makers.DynamicAgent(),
    indicator_agent=makers.IndicatorAgent(
        first_leaf_indicators=('accent',),
        inner_leaf_indicators=('staccato',),
        ),
    playing_durations=durations.very_short_durations,
    playing_groupings=durations.short_groupings,
    rhythm_maker=rhythm_makers.fanfare_rhythm_maker,
    )


guitar_pointillist_music_maker = makers.MusicMaker(
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
    playing_durations=durations.short_durations,
    playing_groupings=durations.short_groupings,
    rhythm_maker=rhythm_makers.pointillist_rhythm_maker,
    )


guitar_trilling_music_maker = makers.MusicMaker(
    dynamic_agent=makers.DynamicAgent(),
    playing_durations=durations.medium_durations,
    playing_groupings=durations.short_groupings,
    rhythm_maker=rhythm_makers.flowing_rhythm_maker,
    spanner_agent=makers.SpannerAgent(
        cyclical_logical_tie_spanners=(
            spannertools.ComplexTrillSpanner(interval='+P4'),
            spannertools.ComplexTrillSpanner(interval='+m2'),
            spannertools.ComplexTrillSpanner(interval='+m3'),
            spannertools.ComplexTrillSpanner(interval='+P4'),
            spannertools.ComplexTrillSpanner(interval='+m3'),
            spannertools.ComplexTrillSpanner(interval='+P4'),
            spannertools.ComplexTrillSpanner(interval='+m3'),
            ),
        ),
    )


guitar_winding_music_maker = makers.MusicMaker(
    dynamic_agent=makers.DynamicAgent(),
    playing_durations=durations.medium_durations,
    playing_groupings=durations.short_groupings,
    rhythm_maker=rhythm_makers.winding_rhythm_maker,
    spanner_agent=makers.SpannerAgent(
        output_spanners=(
            spannertools.Slur,
            ),
        ),
    )


__all__ = (
    'guitar_fanfare_music_maker',
    'guitar_pointillist_music_maker',
    'guitar_trilling_music_maker',
    'guitar_winding_music_maker',
    )
