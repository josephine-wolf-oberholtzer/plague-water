# -*- encoding: utf-8 -*-
import bisect
from abjad import *
from plague_water.makers.Maker import Maker


class ChordMaker(Maker):

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
        ratio = mathtools.Ratio([abs(x) for x in ratio])
        assert len(ratio)
        talea = self._expr_to_cyclic_tuple(talea)
        self._ratio = ratio
        self._talea = talea
        prototype = (
            makers.ChordExpression,
            makers.KeyClusterExpression,
            type(None),
            )
        for sequence in talea:
            assert all(isinstance(x, prototype) for x in sequence)
        self._talea_cursors = \
            self._ratio_and_talea_to_cursors(
                ratio=ratio,
                talea=talea,
                )

    ### SPECIAL METHODS ###

    def __call__(
        self,
        music,
        seed=None,
        segment_duration=None,
        ):
        offsets = self._duration_and_ratio_to_offsets(
            duration=segment_duration,
            ratio=self.ratio,
            )
        iterator = iterate(music).by_logical_tie(pitched=True)
        for logical_tie in enumerate(iterator):
            start_offset = logical_tie.get_timespan().start_offset
            index = self._offset_and_offsets_to_index(
                offset=start_offset,
                offsets=offsets,
                )
            cursor = self._talea_cursors[index]
            expression = cursor()[0]
            if expression is None:
                continue
            expression(logical_tie)
        assert inspect_(music).is_well_formed()

    ### PRIVATE METHODS ###

    def _duration_and_ratio_to_offsets(
        self,
        duration=None,
        ratio=None,
        ):
        ratio_sum = sum(self.ratio)
        duration_parts = []
        for ratio_part in self.ratio:
            multiplier = Multiplier(ratio_part, ratio_sum)
            duration_part = duration * multiplier
            duration_parts.append(duration_part)
        offsets = mathtools.cumulative_sums(duration_parts)
        offsets = offsets[:-1]
        return offsets

    def _offset_and_offsets_to_index(
        self,
        offset=None,
        offsets=None,
        ):
        if offset in offsets:
            return offsets.index(offset)
        return bisect.bisect(offsets, offset) - 1

    def _ratio_and_talea_to_cursors(
        self,
        ratio=None,
        talea=None,
        ):
        talea_cursors = []
        for i in range(ratio):
            subsequence = talea[i]
            cursor = self._expr_to_statal_server_cursor(subsequence)
            talea_cursors.append(cursor)
        return tuple(talea_cursors)

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
