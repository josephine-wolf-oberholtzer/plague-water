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
        prototype = (tuple, type(None))
        assert isinstance(counts_talea, prototype), counts_talea
        assert isinstance(intervals_talea, prototype), intervals_talea
        if counts_talea and intervals_talea:
            assert sequencetools.all_are_nonnegative_integers(counts_talea) 
            assert all(x != 0 for x in intervals_talea)
        self._counts_talea = counts_talea
        self._intervals_talea = intervals_talea

    ### SPECIAL METHODS ###

    def __call__(
        self,
        music,
        seed=None,
        segment_actual_duration=None,
        ):
        if seed is None:
            seed = 0
        assert isinstance(seed, int)
        counts_talea = self._expr_to_cyclic_tuple(
            self.counts_talea,
            seed,
            )
        intervals_talea = self._expr_to_cyclic_tuple(
            self.intervals_talea,
            seed,
            )
        intervals_cursor = datastructuretools.StatalServer(
            intervals_talea)()
        iterator = iterate(music).by_logical_tie(pitched=True)
        for i, logical_tie in enumerate(iterator):
            count = counts_talea[i]
            if not count:
                continue
            center_pitch = logical_tie[0].written_pitch
            chord_pitches = set([center_pitch])
            for interval_number in intervals_cursor(count):
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
