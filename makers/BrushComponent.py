# -*- encoding: utf-8 -*-
from abjad import *
from plague_water.makers.ContextAwareMaker import ContextAwareMaker


class BrushComponent(ContextAwareMaker):

    ### CLASS VARIABLES ###

    __slots__ = (
        '_leading_rest_durations',
        '_music_maker',
        '_playing_durations',
        '_playing_groupings',
        '_tailing_rest_durations',
        '_weight',
        )

    ### INITIALIZER ###

    def __init__(
        self,
        leading_rest_durations=None,
        music_maker=None,
        playing_durations=None,
        playing_groupings=None,
        tailing_rest_durations=None,
        weight=1,
        ):
        from plague_water import makers
        assert isinstance(music_maker, (makers.MusicMaker, type(None)))
        self._music_maker = music_maker
        self._playing_durations = self._setup_duration_cursor(
            playing_durations)
        self._playing_groupings = self._setup_grouping_cursor(
            playing_groupings)
        self._leading_rest_durations = self._setup_duration_cursor(
            leading_rest_durations)
        self._tailing_rest_durations = self._setup_duration_cursor(
            tailing_rest_durations)
        assert isinstance(self.leading_rest_durations,
            (datastructuretools.StatalServerCursor, type(None)))
        assert isinstance(self.playing_durations,
            (datastructuretools.StatalServerCursor, type(None)))
        assert isinstance(self.playing_groupings,
            (datastructuretools.StatalServerCursor, type(None)))
        assert isinstance(self.tailing_rest_durations,
            (datastructuretools.StatalServerCursor, type(None)))
        weight = int(weight)
        assert 0 < weight
        self._weight = int(weight)

    ### SPECIAL METHODS ###

    def __call__(
        self,
        initial_offset,
        maximum_offset,
        ):
        from plague_water import makers
        assert isinstance(self.leading_rest_durations,
            datastructuretools.StatalServerCursor)
        assert isinstance(self.playing_durations,
            datastructuretools.StatalServerCursor)
        assert isinstance(self.playing_groupings,
            datastructuretools.StatalServerCursor)
        assert isinstance(self.tailing_rest_durations,
            datastructuretools.StatalServerCursor)
        assert isinstance(self.music_maker, makers.MusicMaker)
        assert isinstance(initial_offset, Duration), initial_offset
        assert isinstance(maximum_offset, Duration), maximum_offset
        timespan_inventory = timespantools.TimespanInventory()
        leading_rest_duration = Duration(0)
        if self.leading_rest_durations is not None:
            leading_rest_duration = self.leading_rest_durations()[0]
        playing_grouping = self.playing_groupings()[0]
        playing_durations = self.playing_durations(playing_grouping)
        tailing_rest_duration = Duration(0)
        if self.tailing_rest_durations is not None:
            tailing_rest_duration = self.tailing_rest_durations()[0]
        start_offset = initial_offset + leading_rest_duration
        if maximum_offset <= start_offset:
            return timespan_inventory, maximum_offset
        for playing_duration in playing_durations:
            stop_offset = start_offset + playing_duration
            if maximum_offset <= stop_offset:
                return timespan_inventory, maximum_offset
            timespan = makers.PayloadedTimespan(
                music_maker=self.music_maker,
                start_offset=start_offset,
                stop_offset=stop_offset,
                )
            timespan_inventory.append(timespan)
            start_offset = stop_offset
        stop_offset = timespan_inventory.stop_offset + tailing_rest_duration
        if maximum_offset < stop_offset:
            stop_offset = maximum_offset
        return timespan_inventory, stop_offset

    ### PRIVATE METHODS ###

    def _setup_duration_cursor(self, expr):
        if expr is not None:
            if isinstance(expr, Duration):
                expr = [expr]
            if isinstance(expr, (list, tuple)):
                expr = datastructuretools.StatalServer(expr)
            if isinstance(expr, datastructuretools.StatalServer):
                expr = expr()
            assert isinstance(expr, datastructuretools.StatalServerCursor)
        return expr

    def _setup_grouping_cursor(self, expr):
        if expr is not None:
            if isinstance(expr, int):
                expr = [expr]
            if isinstance(expr, (list, tuple)):
                expr = datastructuretools.StatalServer(expr)
            if isinstance(expr, datastructuretools.StatalServer):
                expr = expr()
            assert isinstance(expr, datastructuretools.StatalServerCursor)
        return expr

    ### PUBLIC PROPERTIES ###

    @property
    def leading_rest_durations(self):
        return self._leading_rest_durations

    @property
    def music_maker(self):
        return self._music_maker

    @property
    def playing_durations(self):
        return self._playing_durations

    @property
    def playing_groupings(self):
        return self._playing_groupings

    @property
    def tailing_rest_durations(self):
        return self._leading_rest_durations

    @property
    def weight(self):
        return self._weight
