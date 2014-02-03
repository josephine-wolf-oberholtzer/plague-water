# -*- encoding: utf-8 -*-
from abjad.tools import durationtools
from abjad.tools import rhythmmakertools


clanging_rhythm_maker = rhythmmakertools.TaleaRhythmMaker(
    beam_specifier=rhythmmakertools.BeamSpecifier(
        beam_each_division=False,
        beam_divisions_together=False,
        ),
    talea=rhythmmakertools.Talea(
        counts=(4,),
        denominator=16,
        ),
    tie_specifier=rhythmmakertools.TieSpecifier(
        tie_split_notes=False,
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


fanfare_rhythm_maker = rhythmmakertools.IncisedRhythmMaker(
    beam_specifier=rhythmmakertools.BeamSpecifier(
        beam_each_division=False,
        beam_divisions_together=False,
        ),
    incise_specifier=rhythmmakertools.InciseSpecifier(
        incise_divisions=True,
        prefix_talea=(1,),
        prefix_lengths=(2, 2, 2, 3, 2),
        talea_denominator=32,
        ),
    extra_counts_per_division=(1, 0, 0, 0, 1,),
    )


glissing_rhythm_maker = rhythmmakertools.IncisedRhythmMaker(
    beam_specifier=rhythmmakertools.BeamSpecifier(
        beam_each_division=False,
        beam_divisions_together=False,
        ),
    duration_spelling_specifier=rhythmmakertools.DurationSpellingSpecifier(
        forbidden_written_duration=durationtools.Duration(1, 4),
        ),
    incise_specifier=rhythmmakertools.InciseSpecifier(
        body_ratio=(1,),
        fill_with_notes=True,
        incise_output=True,
        prefix_lengths=(0,),
        suffix_lengths=(1,),
        suffix_talea=(1,),
        talea_denominator=32,
        ),
    )


staggering_rhythm_maker = rhythmmakertools.TaleaRhythmMaker(
    beam_specifier=rhythmmakertools.BeamSpecifier(
        beam_each_division=False,
        beam_divisions_together=False,
        ),
    extra_counts_per_division=(0, 1, 0, 2, 0, 1, 1, 2),
    talea=rhythmmakertools.Talea(
        counts=(1, 2, 4, 1, 1, 1, 3, 2, 1, 2, 1, 3, 1, 1, 1, 2, 1,),
        denominator=16,
        ),
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
        (-2, 1, 1, 1),
        (1, 1, -2),
        (1, 2, -2),
        (1, 1, 1, -2),
        (-1, 1, 1, 1, -1),
        (1, 2, 1, -1),
        (-1, 1, 1, -2),
        (1, 1, -2),
        (-1, 1, 1, 1, -1),
        (-2, 1, 2),
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
    'fanfare_rhythm_maker',
    'flowing_rhythm_maker',
    'glissing_rhythm_maker',
    'staggering_rhythm_maker',
    'stuttering_rhythm_maker',
    'winding_rhythm_maker',
    )
