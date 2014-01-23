# -*- encoding: utf-8 -*-
from abjad import *
from plague_water.makers.Maker import Maker


class PitchClassMaker(Maker):

    ### CLASS VARIABLES ###

    __slots__ = (
        )

    ### INITIALIZER ###

    def __init__(
        self,
        ratio=None,
        talea=None,
        transform_ratio=None,
        transform_talea=None,
        ):
        pass

    ### SPECIAL METHODS ###

    def __call__(
        self,
        music,
        seed=None,
        segment_duration=None,
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

    ### PUBLIC PROPERTIES ###

