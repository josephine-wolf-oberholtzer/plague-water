# -*- encoding: utf-8 -*-
from abjad import *


class ChordExpression(abctools.AbjadObject):
    r'''A chord expression.

    ::

        >>> from plague_water import makers
        >>> chord_expression = makers.ChordExpression(
        ...     arpeggio_direction=Down,
        ...     interval_numbers=(-1, 3, 7),
        ...     )
        >>> print format(chord_expression)
        makers.ChordExpression(
            arpeggio_direction=Down,
            interval_numbers=frozenset([3, -1, 7]),
            )

    ::

        >>> staff = Staff("c'4 d'4 ~ d'4 e'4")
        >>> logical_tie = inspect_(staff[1]).get_logical_tie()
        >>> chord_expression(logical_tie)
        >>> f(staff)
        \new Staff {
            c'4
            \arpeggioArrowDown
            <cs' d' f' a'>4 \arpeggio ~
            <cs' d' f' a'>4
            e'4
        }

    '''

    ### CLASS VARIABLES ###

    __slots__ = (
        '_arpeggio_direction',
        '_interval_numbers',
        )

    ### INITIALIZER ###

    def __init__(
        self,
        arpeggio_direction=None,
        interval_numbers=None,
        ):
        assert arpeggio_direction in (Up, Down, None)
        interval_numbers = frozenset(
            x for x in interval_numbers
            if x != 0
            )
        assert len(interval_numbers)
        self._arpeggio_direction = arpeggio_direction
        self._interval_numbers = interval_numbers

    ### SPECIAL METHODS ###

    def __call__(self, logical_tie):
        assert isinstance(logical_tie, selectiontools.LogicalTie), logical_tie
        center_pitch = logical_tie[0].written_pitch
        pitches = [center_pitch + x for x in self.interval_numbers]
        pitches.append(center_pitch)
        for i, leaf in enumerate(logical_tie):
            chord = Chord(leaf)
            chord.written_pitches = pitches
            mutate(leaf).replace(chord)
            if not i and self.arpeggio_direction is not None:
                arpeggio = indicatortools.Arpeggio(self.arpeggio_direction)
                attach(arpeggio, chord)

    def __eq__(self, expr):
        return systemtools.StorageFormatManager.compare(self, expr)

    def __hash__(self):
        hash_values = systemtools.StorageFormatManager.get_hash_values(self)
        return hash(hash_values)

    ### PUBLIC PROPERTIES ###

    @property
    def arpeggio_direction(self):
        return self._arpeggio_direction

    @property
    def interval_numbers(self):
        return self._interval_numbers
