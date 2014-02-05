# -*- encoding: utf-8 -*-
from abjad import *
from plague_water import makers
from plague_water.materials import durations
from plague_water.materials import rhythm_makers


saxophone_droning_music_maker = makers.MusicMaker()


saxophone_fanfare_music_maker = makers.MusicMaker(
    articulation_handler=makers.ArticulationHandler(
        first_leaf_indicators=('accent',),
        inner_leaf_indicators=('staccato',),
        ),
    leading_rest_durations=durations.medium_durations(11),
    minimum_timespan_duration=durationtools.Duration(1, 16),
    playing_durations=durations.very_short_durations(13),
    playing_groupings=durations.short_groupings(12),
    rhythm_maker=rhythm_makers.fanfare_rhythm_maker,
    )


saxophone_legato_music_maker = makers.MusicMaker()


saxophone_pointillist_music_maker = makers.MusicMaker()


saxophone_trilling_music_maker = makers.MusicMaker()


__all__ = (
    'saxophone_droning_music_maker',
    'saxophone_fanfare_music_maker',
    'saxophone_legato_music_maker',
    'saxophone_pointillist_music_maker',
    'saxophone_trilling_music_maker',
    )
