# -*- encoding: utf-8 -*-
import abc
from abjad import *
from plague_water.makers.PlagueWaterObject import PlagueWaterObject


class TimespanAgent(PlagueWaterObject):

    ### CLASS VARIABLES ###

    __slots__ = (
        '_can_be_split',
        '_minimum_timespan_duration',
        )

    ### INITIALIZER ###

    def __init__(
        self,
        can_be_split=True,
        minimum_timespan_duration=None,
        ):
        if can_be_split is not None:
            can_be_split = bool(can_be_split)
        self._can_be_split = can_be_split
        if minimum_timespan_duration is not None:
            minimum_timespan_duration = Duration(minimum_timespan_duration)
        self._minimum_timespan_duration = minimum_timespan_duration

    ### SPECIAL METHODS ###

    @abc.abstractmethod
    def __call__(
        self,
        initial_offset=None,
        maximum_offset=None,
        music_maker=None,
        dependencies=None,
        ):
        pass

    ### PRIVATE METHODS ###

    def _to_duration_cursor(self, expr):
        if expr is not None:
            if isinstance(expr, Duration):
                expr = [expr]
            if isinstance(expr, (list, tuple)):
                expr = datastructuretools.StatalServer(expr)
            if isinstance(expr, datastructuretools.StatalServer):
                expr = expr()
            assert isinstance(expr, datastructuretools.StatalServerCursor)
        return expr

    def _to_grouping_cursor(self, expr):
        if expr is not None:
            if isinstance(expr, int):
                expr = [expr]
            if isinstance(expr, (list, tuple)):
                expr = datastructuretools.StatalServer(expr)
            if isinstance(expr, datastructuretools.StatalServer):
                expr = expr()
            assert isinstance(expr, datastructuretools.StatalServerCursor)
        return expr

    ### PUBLIC METHODS ###

    def timespan_has_minimum_length(self, timespan):
        assert isinstance(timespan, timespantools.Timespan)
        if self.minimum_timespan_duration is not None:
            if timespan.duration < self.minimum_timespan_duration:
                return False
        return True

    def transform_cursors(self, cursor_transform):
        pass

    ### PUBLIC PROPERTIES ###

    @property
    def can_be_split(self):
        return self._can_be_split

    @property
    def minimum_timespan_duration(self):
        return self._minimum_timespan_duration
