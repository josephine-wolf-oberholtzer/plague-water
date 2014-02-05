# -*- encoding: utf-8 -*-
import collections
import copy
from abjad import *
from plague_water.makers.PlagueWaterObject import PlagueWaterObject


class IndicatorAgent(PlagueWaterObject):

    ### CLASS VARIABLES ###

    __slots__ = (
        '_apply_to_output',
        '_each_leaf_indicators',
        '_first_leaf_indicators',
        '_inner_leaf_indicators',
        '_last_leaf_indicators',
        )

    ### INITIALIZER ###

    def __init__(
        self,
        apply_to_output=None,
        each_leaf_indicators=None,
        first_leaf_indicators=None,
        inner_leaf_indicators=None,
        last_leaf_indicators=None,
        ):
        assert isinstance(apply_to_output, (bool, type(None)))
        assert isinstance(each_leaf_indicators, (tuple, type(None)))
        assert isinstance(first_leaf_indicators, (tuple, type(None)))
        assert isinstance(inner_leaf_indicators, (tuple, type(None)))
        assert isinstance(last_leaf_indicators, (tuple, type(None)))
        self._apply_to_output = apply_to_output
        self._each_leaf_indicators = each_leaf_indicators
        self._first_leaf_indicators = first_leaf_indicators
        self._inner_leaf_indicators = inner_leaf_indicators
        self._last_leaf_indicators = last_leaf_indicators

    ### SPECIAL METHODS ###

    def __call__(
        self,
        music,
        seed=None,
        segment_duration=None,
        ):
        if seed is None:
            seed = 0
        assert isinstance(seed, int)
        each_leaf_indicators = self._prepare_input(
            self.each_leaf_indicators,
            seed,
            )
        first_leaf_indicators = self._prepare_input(
            self.first_leaf_indicators,
            seed,
            )
        inner_leaf_indicators = self._prepare_input(
            self.inner_leaf_indicators,
            seed,
            )
        last_leaf_indicators = self._prepare_input(
            self.last_leaf_indicators,
            seed,
            )
        if self.apply_to_output:
            to_iterate = [music]
        else:
            to_iterate = music
        for division in to_iterate:
            iterator = iterate(division).by_logical_tie(pitched=True)
            logical_ties = tuple(iterator)
            if 1 == len(logical_ties):
                logical_tie = logical_ties[0]
                if first_leaf_indicators:
                    expr = first_leaf_indicators[0]
                elif last_leaf_indicators:
                    expr = last_leaf_indicators[0]
                self._attach_indicators(expr, logical_tie.head)
            elif 1 < len(logical_ties):
                first_logical_tie = logical_ties[0]
                last_logical_tie = logical_ties[-1]
                if first_leaf_indicators:
                    expr = first_leaf_indicators[0]
                    self._attach_indicators(expr, first_logical_tie.head)
                if last_leaf_indicators:
                    expr = last_leaf_indicators[0]
                    self._attach_indicators(expr, last_logical_tie.head)
            if inner_leaf_indicators:
                start = None
                if first_leaf_indicators:
                    start = 1
                stop = None
                if last_leaf_indicators:
                    stop = -1
                for i, logical_tie in enumerate(logical_ties[start:stop]):
                    expr = inner_leaf_indicators[i]
                    self._attach_indicators(expr, logical_tie.head)
            if each_leaf_indicators:
                for i, logical_tie in enumerate(logical_ties):
                    expr = each_leaf_indicators[i]
                    self._attach_indicators(expr, logical_tie.head)
        assert inspect_(music).is_well_formed()

    ### PRIVATE METHODS ###

    def _attach_indicators(self, expr, leaf):
        if not isinstance(expr, tuple):
            expr = (expr,)
        for indicator in expr:
            indicator = copy.copy(indicator)
            attach(indicator, leaf)

    def _prepare_input(self, expr, seed):
        result = []
        if expr is not None:
            for x in expr:
                if isinstance(x, str):
                    x = indicatortools.Articulation(x)
                elif isinstance(x, tuple):
                    subresult = []
                    for y in x:
                        if isinstance(y, str):
                            y = indicatortools.Articulation(y)
                        subresult.append(y)
                    x = tuple(subresult)
                result.append(x)
        result = sequencetools.rotate_sequence(result, seed)
        result = datastructuretools.CyclicTuple(result)
        return result

    ### PUBLIC PROPERTIES ###

    @property
    def apply_to_output(self):
        return self._apply_to_output

    @property
    def each_leaf_indicators(self):
        return self._each_leaf_indicators

    @property
    def first_leaf_indicators(self):
        return self._first_leaf_indicators

    @property
    def inner_leaf_indicators(self):
        return self._inner_leaf_indicators

    @property
    def last_leaf_indicators(self):
        return self._last_leaf_indicators
