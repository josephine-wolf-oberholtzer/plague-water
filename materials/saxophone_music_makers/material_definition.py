# -*- encoding: utf-8 -*-
from abjad import *
from plague_water import makers
from plague_water.materials import durations
from plague_water.materials import rhythm_makers


saxophone_droning_music_maker = makers.MusicMaker(
    rhythm_maker=rhythm_makers.droning_rhythm_maker,
    )


saxophone_fanfare_music_maker = makers.MusicMaker(
    articulation_handler=makers.ArticulationHandler(
        first_leaf_indicators=('accent',),
        inner_leaf_indicators=('staccato',),
        ),
    minimum_timespan_duration=durationtools.Duration(1, 16),
    playing_durations=durations.very_short_durations,
    playing_groupings=durations.short_groupings,
    rhythm_maker=rhythm_makers.fanfare_rhythm_maker,
    )


saxophone_pointillist_music_maker = makers.MusicMaker(
    articulation_handler=makers.ArticulationHandler(),
    playing_durations=durations.short_durations,
    playing_groupings=durations.short_groupings,
    rhythm_maker=rhythm_makers.pointillist_rhythm_maker,
    )


saxophone_trilling_music_maker = makers.MusicMaker(
    playing_durations=durations.medium_durations,
    playing_groupings=durations.short_groupings,
    rhythm_maker=rhythm_makers.flowing_rhythm_maker,
    spanner_handler=makers.SpannerHandler(
        cyclical_logical_tie_spanners=(
            spannertools.ComplexTrillSpanner(interval='+m3'),
            spannertools.ComplexTrillSpanner(interval='+P4'),
            spannertools.ComplexTrillSpanner(interval='+m3'),
            spannertools.ComplexTrillSpanner(interval='+P4'),
            spannertools.ComplexTrillSpanner(interval='+m2'),
            spannertools.ComplexTrillSpanner(interval='+m3'),
            spannertools.ComplexTrillSpanner(interval='+P4'),
            ),
        ),
    )


saxophone_winding_music_maker = makers.MusicMaker(
    playing_durations=durations.medium_durations,
    playing_groupings=durations.short_groupings,
    rhythm_maker=rhythm_makers.winding_rhythm_maker,
    )


__all__ = (
    'saxophone_droning_music_maker',
    'saxophone_fanfare_music_maker',
    'saxophone_pointillist_music_maker',
    'saxophone_trilling_music_maker',
    'saxophone_winding_music_maker',
    )
