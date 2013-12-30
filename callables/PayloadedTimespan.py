# -*- encoding: utf-8 -*-
from abjad import timespantools


class PayloadedTimespan(timespantools.Timespan):

    ### CLASS VARIABLES ###

    __slots__ = (
        '_color',
        )

    ### INITIALIZER ###

    def __init__(
        self,
        start_offset=None,
        stop_offset=None,
        color=None,
        ):
        from plague_water import callables
        assert isinstance(color, (callables.Color, type(None)))
        timespantools.Timespan.__init__(
            self,
            start_offset=start_offset,
            stop_offset=stop_offset,
            )
        self._color = color

    ### PUBLIC PROPERTIES ###

    @property
    def color(self):
        return self._color
