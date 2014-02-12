# -*- encoding: utf-8 -*-
import bisect
from abjad import *
from plague_water.makers.PlagueWaterObject import PlagueWaterObject


class ChordAgent(PlagueWaterObject):

    ### CLASS VARIABLES ###

    __slots__ = (
        '_ratio',
        '_talea',
        '_talea_cursors',
        )

    ### INITIALIZER ###

    def __init__(
        self,
        ratio=None,
        talea=None,
        ):
        from plague_water import makers
        ratio = mathtools.Ratio([abs(x) for x in ratio])
        assert len(ratio)
        talea = self._expr_to_cyclic_tuple(talea)
        self._ratio = ratio
        self._talea = talea
        expression_prototype = (
            makers.ChordExpression,
            makers.KeyClusterExpression,
            type(None),
            )
        for sequence in talea:
            assert all(isinstance(x, expression_prototype) for x in sequence)
        talea = tuple(tuple(sequence) for sequence in talea)
        self._talea_cursors = \
            self._ratio_and_talea_to_cursors(
                ratio=ratio,
                talea=talea,
                )

    ### SPECIAL METHODS ###

    def __call__(
        self,
        logical_tie,
        segment_duration=None,
        ):
        assert isinstance(logical_tie, selectiontools.LogicalTie)
        assert logical_tie
        assert segment_duration
        offsets = self._duration_and_ratio_to_offsets(
            duration=segment_duration,
            ratio=self.ratio,
            )
        start_offset = logical_tie.get_timespan().start_offset
        index = self._offset_and_offsets_to_index(
            offset=start_offset,
            offsets=offsets,
            )
        cursor = self._talea_cursors[index]
        expression = cursor()[0]
        if expression is not None:
            expression(logical_tie)

    ### PUBLIC PROPERTIES ###

    @property
    def ratio(self):
        return self._ratio

    @property
    def talea(self):
        return self._talea

    @property
    def talea_cursors(self):
        return self._talea_cursors
