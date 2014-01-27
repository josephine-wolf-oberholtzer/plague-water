# -*- encoding: utf-8 -*-
from abjad import *


flowing_rhythm_maker = rhythmmakertools.TupletRhythmMaker(
    tuplet_ratios=(
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
    )


clanging_rhythm_maker = rhythmmakertools.TaleaRhythmMaker(
    talea=(4, 4, 4, 3, 4, 5, 4, 4, 3,),
    talea_denominator=16,
    )


staggering_rhythm_maker = rhythmmakertools.IncisedRhythmMaker(
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
    )


stuttering_rhythm_maker = rhythmmakertools.TupletRhythmMaker(
    tuplet_ratios=(
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
    )


winding_rhythm_maker = rhythmmakertools.TaleaRhythmMaker(
    burnish_output=True,
    burnish_specifier=rhythmmakertools.BurnishSpecifier(
        lefts=(-1,),
        middles=(0,),
        rights=(-1,),
        left_lengths=(1, 1, 0, 2, 1, 1, 1, 0, 1, 0),
        right_lengths=(1, 0, 0, 1, 0,),
        ),
    prolation_addenda=(0, 1, 0, 0, 1, 2, 0, 1, 0, 0),
    talea=(
        1, 2, 1, 1, 1, 1, 3, 2, 1, 2, 1, 3, 1, 1, 1, 2, 1,
        ),
    talea_denominator=16,
    )


__all__ = (
    'clanging_rhythm_maker',
    'flowing_rhythm_maker',
    'staggering_rhythm_maker',
    'stuttering_rhythm_maker',
    'winding_rhythm_maker',
    )
