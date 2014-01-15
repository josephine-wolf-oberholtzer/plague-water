# -*- encoding: utf-8 -*-
from abjad import *
from plague_water.makers.ContextAwareMaker import ContextAwareMaker


class PitchClassMaker(ContextAwareMaker):

    ### CLASS VARIABLES ###

    __slots__ = (
        )

    ### SPECIAL METHODS ###

    def __call__(
        self,
        music,
        context_map=None,
        context_name=None,
        seed=None,
        ):
        assert isinstance(seed, (int, type(None)))
        parameter_map = self._build_parameter_map(
            context_map, context_name)
        for logical_tie in iterate(music).by_logical_tie(pitched=True):
            pitch_count = self.choose_pitch_count(parameter_map)
            pitch_classes = self.choose_pitches(pitch_count, parameter_map)
            for leaf in logical_tie:
                if 1 < len(pitch_classes):
                    chord = Chord(leaf)
                    chord.written_pitches = pitch_classes
                    mutate(leaf).replace(chord)
                else:
                    leaf.written_pitch = pitch_classes[0]
