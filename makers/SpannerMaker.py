# -*- encoding: utf-8 -*-
import copy
from abjad import attach
from abjad import iterate
from abjad.tools import durationtools
from abjad.tools import spannertools
from plague_water.makers.Maker import Maker


class SpannerMaker(Maker):

    ### CLASS VARIABLES ###

    __slots__ = (
        '_division_spanners',
        '_output_spanners',
        '_logical_tie_spanners',
        '_minimum_logical_tie_duration',
        )

    ### INITIALIZER ###

    def __init__(
        self,
        division_spanners=None,
        logical_tie_spanners=None,
        minimum_logical_tie_duration=None,
        output_spanners=None,
        ):
        self._division_spanners = self._none_to_tuple(division_spanners)
        self._logical_tie_spanners = self._none_to_tuple(logical_tie_spanners)
        self._output_spanners = self._none_to_tuple(output_spanners)
        if minimum_logical_tie_duration is not None:
            minimum_logical_tie_duration = durationtools.Duration(
                minimum_logical_tie_duration)
        self._minimum_logical_tie_duration = minimum_logical_tie_duration

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
        output_spanners = self._prepare_spanners(
            self.output_spanners)
        division_spanners = self._prepare_spanners(
            self.division_spanners)
        logical_tie_spanners = self._prepare_spanners(
            self.logical_tie_spanners)
        if output_spanners:
            for spanner in output_spanners:
                spanner = copy.copy(spanner)
                attach(spanner, music)
        if division_spanners:
            for division in music:
                for spanner in division_spanners:
                    spanner = copy.copy(spanner)
                    attach(spanner, music)
        if logical_tie_spanners:
            for logical_tie in iterate(music).by_logical_tie(pitched=True):
                if self.minimum_logical_tie_duration is not None:
                    tie_duration = logical_tie.get_duration()
                    if tie_duration < self.minimum_tie_duration:
                        continue
                spanner = copy.copy(spanner)
                for spanner in logical_tie_spanners:
                    spanner = copy.copy(spanner)
                    attach(spanner, logical_tie)

    ### PRIVATE METHODS ###

    def _prepare_spanners(self, expr):
        result = []
        if expr is not None:
            for spanner in expr:
                if isinstance(spanner, type):
                    spanner = spanner()
                else:
                    spanner = copy.copy(spanner)
                result.append(spanner)
        return result

    def _none_to_tuple(self, expr):
        if expr is not None:
            if isinstance(expr, spannertools.Spanner):
                return (expr,)
            elif issubclass(expr, spannertools.Spanner):
                return (expr,)
            for x in expr:
                if isinstance(x, type):
                    assert issubclass(x, spannertools.Spanner)
                else:
                    assert isinstance(x, spannertools.Spanner)
            expr = tuple(expr)
        return expr

    ### PUBLIC PROPERTIES ###

    @property
    def division_spanners(self):
        return self._division_spanners

    @property
    def output_spanners(self):
        return self._output_spanners

    @property
    def logical_tie_spanners(self):
        return self._logical_tie_spanners

    @property
    def minimum_logical_tie_duration(self):
        return self._minimum_logical_tie_duration
