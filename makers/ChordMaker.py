# -*- encoding: utf-8 -*-
from abjad import *
from plague_water.makers.ContextAwareMaker import ContextAwareMaker


class ChordMaker(ContextAwareMaker):

    ### CLASS VARIABLES ###

    __slots__ = (
        '_talea',
        )

    ### INITIALIZER ###

    def __init__(
        self,
        talea=None,
        ):
        talea = self._coerce_cursor_argument(talea)
        self._talea = talea

    ### SPECIAL METHODS ###

    def __call__(
        self,
        music,
        seed=None,
        segment_actual_duration=None,
        ):
        from plague_water import makers
        expression_prototype = (
            makers.ChordExpression,
            makers.KeyClusterExpression,
            type(None),
            )
        iterator = iterate(music).by_logical_tie(pitched=True)
        for logical_tie in enumerate(iterator):
            expression = self.counts_talea()[0]
            assert isinstance(expression, expression_prototype)
            if expression is None:
                continue
            expression(logical_tie)
        assert inspect_(music).is_well_formed()

    ### PUBLIC PROPERTIES ###

    @property
    def talea(self):
        return self._talea
