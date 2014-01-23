# -*- encoding: utf-8 -*-
from abjad import *
from plague_water.makers.ContextAwareMaker import ContextAwareMaker


class ChordMaker(ContextAwareMaker):

    ### CLASS VARIABLES ###

    __slots__ = (
        '_counts_talea',
        '_intervals_talea',
        )

    ### INITIALIZER ###

    def __init__(
        self,
        counts_talea=None,
        intervals_talea=None,
        ):
        counts_talea = self._coerce_cursor_argument(counts_talea)
        intervals_talea = self._coerce_cursor_argument(intervals_talea)
        self._counts_talea = counts_talea
        self._intervals_talea = intervals_talea

    ### SPECIAL METHODS ###

    def __call__(
        self,
        music,
        seed=None,
        segment_actual_duration=None,
        ):
        iterator = iterate(music).by_logical_tie(pitched=True)
        for i, logical_tie in enumerate(iterator):
            count = self.counts_talea(1)[0]
            if not count:
                continue
            center_pitch = logical_tie[0].written_pitch
            chord_pitches = set([center_pitch])
            for interval_number in self.intervals_talea(count):
                chord_pitch = center_pitch.transpose(interval_number)
                chord_pitches.add(chord_pitch)
            if 1 == len(chord_pitches):
                continue
            for leaf in logical_tie:
                new_chord = Chord(leaf)
                new_chord.written_pitches = tuple(chord_pitches)
                mutate(leaf).replace(new_chord)
        assert inspect_(music).is_well_formed()

    ### PUBLIC PROPERTIES ###

    @property
    def counts_talea(self):
        return self._counts_talea

    @property
    def intervals_talea(self):
        return self._intervals_talea
