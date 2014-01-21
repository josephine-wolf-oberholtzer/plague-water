# -*- encoding: utf-8 -*-
from abjad import *
from plague_water import makers
#from plague_water.materials import duration_servers


clanging_brush_component = makers.BrushComponent(
    playing_durations=None,
    playing_groupings=None,
    leading_rest_durations=None,
    minimum_timespan_duration=None,
    music_maker=makers.MusicMaker(
        rhythm_maker=rhythmmakertools.TaleaRhythmMaker(
            talea=(4, 4, 4, 3, 4, 5, 4, 4, 3,),
            talea_denominator=16,
            ),
        ),
    tailing_rest_durations=None,
    )


flowing_brush_component = makers.BrushComponent(
    playing_durations=None,
    playing_groupings=None,
    leading_rest_durations=None,
    minimum_timespan_duration=None,
    music_maker=makers.MusicMaker(
        rhythm_maker=rhythmmakertools.RatioTaleaRhythmMaker(
            ratio_talea=(
                (2, 1),
                (1, 1),
                (1,),
                (1, 2, 1),
                (4, 1),
                (1, 3, 1),
                (3, 4),
                (4, 1),
                (2, 3),
                (1, 2, 1),
                (1, 2, 1),
                (2, 1),
                (4, 1),
                (2, 3),
                (1, 2, 1),
                (1, 3),
                (1,),
                ),
            tie_across_divisions=True,
            ),
        ),
    tailing_rest_durations=None,
    )


staggering_brush_component = makers.BrushComponent(
    playing_durations=None,
    playing_groupings=None,
    leading_rest_durations=None,
    minimum_timespan_duration=None,
    music_maker=makers.MusicMaker(
        rhythm_maker=rhythmmakertools.IncisedRhythmMaker(
            #body_ratio=(1, 1),
            fill_with_notes=True,
            incise_divisions=True,
            incise_specifier=rhythmmakertools.InciseSpecifier(
                prefix_talea=(1, 1, 1, 1, 1, 1, 2, 1, 1),
                prefix_lengths=(2, 2, 1, 3, 2, 2, 3, 3, 4, 2, 3),
                suffix_talea=None,
                suffix_lengths=(0,),
                talea_denominator=32,
                ),
            ),
        ),
    tailing_rest_durations=None,
    )


stuttering_brush_component = makers.BrushComponent(
    playing_durations=None,
    playing_groupings=None,
    leading_rest_durations=None,
    minimum_timespan_duration=None,
    music_maker=makers.MusicMaker(
        rhythm_maker=rhythmmakertools.RatioTaleaRhythmMaker(
            ratio_talea=(
                (1, 1, -2),
                (-2, 2, 1, -2),
                (1, 2, 3, 1, -4),
                (1, 1, -3),
                (-1, 1, 1, 1, -2),
                (1, 2, 1, -3),
                (-1, 1, 1, -4),
                (-2, 1, 1, 1, -3),
                (-1, 1, 3, 1, -2),
                (1, 2, 2, -2),
                ),
            tie_across_divisions=False,
            ),
        ),
    tailing_rest_durations=None,
    )


winding_brush_component = makers.BrushComponent(
    playing_durations=None,
    playing_groupings=None,
    leading_rest_durations=None,
    minimum_timespan_duration=None,
    music_maker=makers.MusicMaker(
        rhythm_maker=rhythmmakertools.TaleaRhythmMaker(
            burnish_output=True,
            burnish_specifier=rhythmmakertools.BurnishSpecifier(
                lefts=(-1,),
                middles=(0,),
                rights=(-1,),
                left_lengths=(1, 1, 0, 2, 1, 1, 1, 0, 1, 0),
                right_lengths=(1, 0, 0, 1, 0,),
                ),
            prolation_addenda=(0, 1, 0, 0, 1, 2, 0, 1, 0, 0),
            talea=(1, 2, 1, 1, 1, 1, 3, 2, 1, 2, 1, 3, 1, 1, 1, 2, 1,),
            talea_denominator=16,
            ),
        ),
    tailing_rest_durations=None,
    )


__all__ = (
    'clanging_brush_component',
    'flowing_brush_component',
    'staggering_brush_component',
    'stuttering_brush_component',
    'winding_brush_component',
    )
