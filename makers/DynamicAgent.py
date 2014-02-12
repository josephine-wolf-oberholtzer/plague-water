# -*- encoding: utf-8 -*-
from abjad import *
from plague_water.makers.PlagueWaterObject import PlagueWaterObject


class DynamicAgent(PlagueWaterObject):

    ### CLASS VARIABLES ###

    __slots__ = (
        '_cyclic_dynamic_expressions',
        '_initial_dynamic_expressions',
        )

    ### INITIALIZER ###

    def __init__(
        self,
        cyclic_dynamic_expressions=None,
        initial_dynamic_expressions=None,
        ):
        from plague_water import makers
        prototype = (type(None), makers.DynamicExpression)
        if cyclic_dynamic_expressions is not None:
            assert all(isinstance(x, prototype)
                for x in cyclic_dynamic_expressions)
            assert len(cyclic_dynamic_expressions)
            cyclic_dynamic_expressions = tuple(cyclic_dynamic_expressions)
        self._cyclic_dynamic_expressions = cyclic_dynamic_expressions
        if initial_dynamic_expressions is not None:
            assert all(isinstance(x, prototype)
                for x in initial_dynamic_expressions)
            assert len(initial_dynamic_expressions)
            initial_dynamic_expressions = tuple(initial_dynamic_expressions)
        self._initial_dynamic_expressions = initial_dynamic_expressions

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
        leaves = list(iterate(music).by_class(scoretools.Leaf))
        groups = list(iterate(leaves).by_run(
            (scoretools.Note, scoretools.Chord)))
        start_index = 0
        if self.initial_dynamic_expressions:
            start_index = 1
            initial_dynamic_expressions = sequencetools.rotate_sequence(
                self.initial_dynamic_expressions, seed)
            initial_dynamic_expression = initial_dynamic_expressions[0]
            if initial_dynamic_expression is not None:
                initial_dynamic_expression(groups[0])
        if self.cyclic_dynamic_expressions:
            cyclic_dynamic_expressions = sequencetools.rotate_sequence(
                self.cyclic_dynamic_expressions, seed)
            cyclic_dynamic_expressions = datastructuretools.CyclicTuple(
                cyclic_dynamic_expressions)
            iterator = enumerate(groups[start_index:], start_index)
            for index, group in iterator:
                dynamic_expression = cyclic_dynamic_expressions[index]
                if dynamic_expression is not None:
                    dynamic_expression(group)

    ### PUBLIC PROPERTIES ###

    @property
    def cyclic_dynamic_expressions(self):
        return self._cyclic_dynamic_expressions

    @property
    def initial_dynamic_expressions(self):
        return self._initial_dynamic_expressions
