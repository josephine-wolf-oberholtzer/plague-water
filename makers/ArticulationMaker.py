# -*- encoding: utf-8 -*-
import collections
from abjad import *
from plague_water.makers.ContextAwareMaker import ContextAwareMaker


class ArticulationMaker(ContextAwareMaker):

    ### CLASS VARIABLES ###

    __slots__ = (
        '_all_leaves',
        '_first_leaf',
        '_inner_leaves',
        '_last_leaf',
        )

    ### INITIALIZER ###

    def __init__(
        self,
        all_leaves=None,
        first_leaf=None,
        inner_leaves=None,
        last_leaf=None,
        ):
        assert isinstance(all_leaves, (tuple, type(None)))
        assert isinstance(first_leaf, (tuple, type(None)))
        assert isinstance(inner_leaves, (tuple, type(None)))
        assert isinstance(last_leaf, (tuple, type(None)))
        self._all_leaves = all_leaves
        self._first_leaf = first_leaf
        self._inner_leaves = inner_leaves
        self._last_leaf = last_leaf

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

        all_leaves = datastructuretools.CyclicTuple(
            sequencetools.rotate_sequence(
                self.all_leaves or (),
                seed,
                )
            )
        first_leaf = datastructuretools.CyclicTuple(
            sequencetools.rotate_sequence(
                self.first_leaf or (),
                seed,
                )
            )
        inner_leaves = datastructuretools.CyclicTuple(
            sequencetools.rotate_sequence(
                self.inner_leaves or (),
                seed,
                )
            )
        last_leaf = datastructuretools.CyclicTuple(
            sequencetools.rotate_sequence(
                self.last_leaf or (),
                seed,
                )
            )

        for cell in music:
            logical_ties = tuple(iterate(cell).by_logical_tie(pitched=True))
            if 1 == len(logical_ties):
                if first_leaf:
                    articulation = Articulation(first_leaf[0])
                elif last_leaf:
                    articulation = Articulation(last_leaf[0])
                attach(articulation, logical_ties[0][0])
            elif 1 < len(logical_ties):
                if first_leaf:
                    articulation = Articulation(first_leaf[0])
                    attach(articulation, logical_ties[0][0])
                if last_leaf:
                    articulation = Articulation(last_leaf[0])
                    attach(articulation, logical_ties[-1][0])
            if inner_leaves:
                start = None
                if first_leaf:
                    start = 1
                stop = None
                if last_leaf:
                    stop = -1
                for i, logical_tie in enumerate(logical_ties[start:stop]):
                    articulation = Articulation(inner_leaves[i])
                    attach(articulation, logical_tie[0])
            if all_leaves:
                for i, logical_tie in enumerate(logical_ties):
                    articulation = Articulation(all_leaves[i])
                    attach(articulation, logical_tie[0])

    ### PUBLIC PROPERTIES ###

    @property
    def all_leaves(self):
        return self._all_leaves

    @property
    def first_leaf(self):
        return self._first_leaf

    @property
    def inner_leaves(self):
        return self._inner_leaves

    @property
    def last_leaf(self):
        return self._last_leaf
