# -*- encoding: utf-8 -*-
import collections
from abjad import *
from plague_water.makers.Maker import Maker


class ArticulationMaker(Maker):

    ### CLASS VARIABLES ###

    __slots__ = (
        '_each_leaf_articulations',
        '_first_leaf_articulations',
        '_inner_leaf_articulations',
        '_last_leaf_articulations',
        )

    ### INITIALIZER ###

    def __init__(
        self,
        each_leaf_articulations=None,
        first_leaf_articulations=None,
        inner_leaf_articulations=None,
        last_leaf_articulations=None,
        ):
        assert isinstance(each_leaf_articulations, (tuple, type(None)))
        assert isinstance(first_leaf_articulations, (tuple, type(None)))
        assert isinstance(inner_leaf_articulations, (tuple, type(None)))
        assert isinstance(last_leaf_articulations, (tuple, type(None)))
        self._each_leaf_articulations = each_leaf_articulations
        self._first_leaf_articulations = first_leaf_articulations
        self._inner_leaf_articulations = inner_leaf_articulations
        self._last_leaf_articulations = last_leaf_articulations

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
        each_leaf_articulations = self._expr_to_cyclic_tuple(
            self.each_leaf_articulations,
            seed,
            )
        first_leaf_articulations = self._expr_to_cyclic_tuple(
            self.first_leaf_articulations,
            seed,
            )
        inner_leaf_articulations = self._expr_to_cyclic_tuple(
            self.inner_leaf_articulations,
            seed,
            )
        last_leaf_articulations = self._expr_to_cyclic_tuple(
            self.last_leaf_articulations,
            seed,
            )
        for cell in music:
            logical_ties = tuple(iterate(cell).by_logical_tie(pitched=True))
            if 1 == len(logical_ties):
                if first_leaf_articulations:
                    articulation = Articulation(first_leaf_articulations[0])
                elif last_leaf_articulations:
                    articulation = Articulation(last_leaf_articulations[0])
                attach(articulation, logical_ties[0][0])
            elif 1 < len(logical_ties):
                if first_leaf_articulations:
                    articulation = Articulation(first_leaf_articulations[0])
                    attach(articulation, logical_ties[0][0])
                if last_leaf_articulations:
                    articulation = Articulation(last_leaf_articulations[0])
                    attach(articulation, logical_ties[-1][0])
            if inner_leaf_articulations:
                start = None
                if first_leaf_articulations:
                    start = 1
                stop = None
                if last_leaf_articulations:
                    stop = -1
                for i, logical_tie in enumerate(logical_ties[start:stop]):
                    articulation = Articulation(inner_leaf_articulations[i])
                    attach(articulation, logical_tie[0])
            if each_leaf_articulations:
                for i, logical_tie in enumerate(logical_ties):
                    articulation = Articulation(each_leaf_articulations[i])
                    attach(articulation, logical_tie[0])
        assert inspect_(music).is_well_formed()

    ### PUBLIC PROPERTIES ###

    @property
    def each_leaf_articulations(self):
        return self._each_leaf_articulations

    @property
    def first_leaf_articulations(self):
        return self._first_leaf_articulations

    @property
    def inner_leaf_articulations(self):
        return self._inner_leaf_articulations

    @property
    def last_leaf_articulations(self):
        return self._last_leaf_articulations
