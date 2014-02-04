# -*- encoding: utf-8 -*-
from abjad import *
from plague_water import makers
from plague_water.materials import durations
from plague_water.materials import rhythm_makers


guitar_fanfare_music_maker = makers.MusicMaker(
    articulation_maker=makers.ArticulationMaker(
        first_leaf_indicators=('accent',),
        inner_leaf_indicators=('staccato',),
        ),
    leading_rest_durations=durations.medium_durations(11),
    minimum_timespan_duration=durationtools.Duration(1, 16),
    playing_durations=durations.very_short_durations(13),
    playing_groupings=durations.short_groupings(12),
    rhythm_maker=rhythm_makers.fanfare_rhythm_maker,
    )


guitar_trills_music_maker = makers.MusicMaker(
    rhythm_maker=rhythm_makers.flowing_rhythm_maker,
    spanner_maker=makers.SpannerMaker(
        cyclical_logical_tie_spanners=(
            spannertools.ComplexTrillSpanner(
                interval='+P4',
                ),
            spannertools.ComplexTrillSpanner(
                interval='+m3',
                ),
            ),
        minimum_logical_tie_duration=durationtools.Duration(1, 8),
        ),
    )


__all__ = (
    'guitar_fanfare_music_maker',
    )
