# -*- encoding: utf-8 -*-
from abjad import *
from plague_water.makers.ContextAwareMaker import ContextAwareMaker


class DynamicMaker(ContextAwareMaker):

    ### CLASS VARIABLES ###

    __slots__ = (
        )

    ### SPECIAL METHODS ###

    def __call__(
        self,
        music,
        context_map=None,
        context_name=None,
        seed=None,
        ):
        assert isinstance(seed, (int, type(None)))
        parameter_map = self._build_parameter_map(
            context_map, context_name)
        pass
