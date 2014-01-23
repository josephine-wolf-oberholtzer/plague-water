# -*- encoding: utf-8 -*-
from abjad import *


class KeyClusterExpression(abctools.AbjadObject):

    ### CLASS VARIABLES ###

    __slots__ = (
        '_arpeggio_direction',
        '_include_black_keys',
        '_include_white_keys',
        '_width',
        )

    ### INITIALIZER ###

    def __init__(
        self,
        arpeggio_direction=None,
        include_black_keys=True,
        include_white_keys=True,
        width=5,
        ):
        assert 2 < width and (int(width) % 2)
        assert include_black_keys or include_white_keys
        assert arpeggio_direction in (Up, Down, None)
        self._arpeggio_direction = arpeggio_direction
        self._include_black_keys = bool(include_black_keys)
        self._include_white_keys = bool(include_white_keys)
        self._width = int(width)

    ### SPECIAL METHODS ###

    def __call__(self, logical_tie):
        assert isinstance(logical_tie, selectiontools.LogicalTie), logical_tie
        center_pitch = logical_tie[0].written_pitch
        starting_diatonic_number = \
            center_pitch.diatonic_pitch_number - (self.width / 2)
        diatonic_numbers = [starting_diatonic_number]
        for i in range(1, (self.width / 2) + 1):
            step = 2 * i
            diatonic_number = starting_diatonic_number + step
            diatonic_numbers.append(diatonic_number)
        chromatic_numbers = [
            (12 * (x // 7)) +
            pitchtools.PitchClass._diatonic_pitch_class_number_to_pitch_class_number[
                x % 7]
            for x in diatonic_numbers
            ]
        chord_pitches = [pitchtools.NamedPitch(x)
            for x in chromatic_numbers]
        key_cluster = indicatortools.KeyCluster(
            include_black_keys=self.include_black_keys,
            include_white_keys=self.include_white_keys,
            )
        for i, leaf in enumerate(logical_tie):
            chord = Chord(leaf)
            chord.written_pitches = chord_pitches
            mutate(leaf).replace(chord)
            attach(key_cluster, chord)
            if i == 0 and self.arpeggio_direction is not None:
                arpeggio = indicatortools.Arpeggio(
                    direction=self.arpeggio_direction,
                    )
                attach(arpeggio, chord)

    ### PUBLIC PROPERTIES ###

    @property
    def arpeggio_direction(self):
        return self._arpeggio_direction

    @property
    def include_black_keys(self):
        return self._include_black_keys

    @property
    def include_white_keys(self):
        return self._include_white_keys

    @property
    def width(self):
        return self._width
