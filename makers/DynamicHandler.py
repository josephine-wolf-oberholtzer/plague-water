# -*- encoding: utf-8 -*-
from abjad import *
from plague_water.makers.Maker import Maker


class DynamicHandler(Maker):

    ### CLASS VARIABLES ###

    __slots__ = (
        )

    ### SPECIAL METHODS ###

    def __call__(
        self,
        music,
        seed=None,
        segment_duration=None,
        ):
        assert isinstance(seed, (int, type(None)))
