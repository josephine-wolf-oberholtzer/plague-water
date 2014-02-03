# -*- encoding: utf-8 -*-
from abjad.tools import abctools
from abjad.tools import rhythmmakertools
from abjad.tools import sequencetools


class Helper(abctools.AbjadObject):
    def __init__(self):
        pass
    def __call__(self, talea, seeds):
        talea = sequencetools.rotate_sequence(talea, seeds)
        return talea


clanging_rhythm_maker = rhythmmakertools.TaleaRhythmMaker(
    beam_specifier=rhythmmakertools.BeamSpecifier(
        beam_each_division=False,
        beam_divisions_together=False,
        ),
    talea=rhythmmakertools.Talea(
        counts=(4, 4, 4, 3, 4, 5, 4, 4, 3,),
        denominator=16,
        ),
    )


droning_rhythm_maker = rhythmmakertools.NoteRhythmMaker(
    beam_specifier=rhythmmakertools.BeamSpecifier(
        beam_each_division=False,
        beam_divisions_together=False,
        ),
    )


flowing_rhythm_maker = rhythmmakertools.TupletRhythmMaker(
    beam_specifier=rhythmmakertools.BeamSpecifier(
        beam_each_division=False,
        beam_divisions_together=False,
        ),
    tie_specifier=rhythmmakertools.TieSpecifier(
        tie_across_divisions=True,
        ),
    tuplet_ratios=(
        (2, 1),
        (1, 1),
        (1, 2),
        (1, -1, 1),
        (1, 1),
        (3, 2),
        (2, -1, 1),
        (1, 1),
        ),
    tuplet_spelling_specifier=rhythmmakertools.TupletSpellingSpecifier(
        avoid_dots=True,
        ),
    )


staggering_rhythm_maker = rhythmmakertools.TaleaRhythmMaker(
    beam_specifier=rhythmmakertools.BeamSpecifier(
        beam_each_division=False,
        beam_divisions_together=False,
        ),
    extra_counts_per_division=(0, 1, 0, 1, 1),
    talea=rhythmmakertools.Talea(
        counts=(1, 2, 1, 1, 1, 1, 3, 2, 1, 2, 1, 3, 1, 1, 1, 2, 1,),
        denominator=16,
        ),
    helper_functions={
        'talea': Helper(),
        'extra_counts_per_division': Helper(),
        'lefts': Helper(),
        'left_lengths': Helper(),
        'rights': Helper(),
        'right_lengths': Helper(),
        }
    )


stuttering_rhythm_maker = rhythmmakertools.TupletRhythmMaker(
    beam_specifier=rhythmmakertools.BeamSpecifier(
        beam_each_division=False,
        beam_divisions_together=False,
        ),
    tie_specifier=rhythmmakertools.TieSpecifier(
        tie_across_divisions=True,
        ),
    tuplet_ratios=(
        (1, 1, -2),
        (1, 2, 2),
        (-1, 1, 2, -1),
        (1, 2, -2),
        (1, 1, 1, -1),
        (-1, 1, 1, 1, -1),
        (1, 2, 1, -1),
        (-1, 1, 1, -2),
        (-1, 1, 1, 1, -1),
        (1, 2, -1),
        ),
    tuplet_spelling_specifier=rhythmmakertools.TupletSpellingSpecifier(
        avoid_dots=True,
        ),
    )


winding_rhythm_maker = rhythmmakertools.TaleaRhythmMaker(
    beam_specifier=rhythmmakertools.BeamSpecifier(
        beam_each_division=False,
        beam_divisions_together=False,
        ),
    burnish_specifier=rhythmmakertools.BurnishSpecifier(
        burnish_output=True,
        lefts=(-1,),
        middles=(0,),
        rights=(-1,),
        left_lengths=(1, 1, 0, 2, 1, 1, 1, 0, 1, 0),
        right_lengths=(1, 0, 0, 1, 0,),
        ),
    extra_counts_per_division=(0, 1, 0, 0, 1, 2, 0, 1, 0, 0),
    talea=rhythmmakertools.Talea(
        counts=(1, 2, 1, 1, 1, 1, 3, 2, 1, 2, 1, 3, 1, 1, 1, 2, 1,),
        denominator=16,
        ),
    )


__all__ = (
    'clanging_rhythm_maker',
    'droning_rhythm_maker',
    'flowing_rhythm_maker',
    'staggering_rhythm_maker',
    'stuttering_rhythm_maker',
    'winding_rhythm_maker',
    )
