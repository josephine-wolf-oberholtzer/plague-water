# -*- encoding: utf-8 -*-
from abjad import *
from plague_water import makers
from plague_water.materials import durations
from plague_water.materials import rhythm_makers


basic_music_maker = makers.MusicMaker(
    rhythm_maker=rhythmmakertools.NoteRhythmMaker(
        beam_specifier=rhythmmakertools.BeamSpecifier(
            beam_divisions_together=False,
            beam_each_division=False,
            ),
        ),
    timespan_agent=makers.SemanticTimespanAgent(
        playing_durations=durations.short_durations(3),
        playing_groupings=durations.short_groupings(4),
        tailing_rest_durations=durations.short_durations(3),
        ),
    )

silent_music_maker = makers.MusicMaker(
    apply_beam=False,
    rhythm_maker=rhythmmakertools.NoteRhythmMaker(
        output_masks=[
            rhythmmakertools.silence_all(),
            ],
        ),
    timespan_agent=makers.SemanticTimespanAgent(
        playing_durations=[Duration(1, 4), Duration(1, 4)],
        playing_groupings=[1, 1],
        ),
    )

__all__ = (
    'basic_music_maker',
    'silent_music_maker',
    )