# -*- encoding: utf-8 -*-
from abjad import *
from plague_water.makers.TimespanAgent import TimespanAgent


class SemanticTimespanAgent(TimespanAgent):

    ### CLASS VARIABLES ###

    __slots__ = (
        '_leading_rest_durations',
        '_playing_durations',
        '_playing_groupings',
        '_tailing_rest_durations',
        )

    ### INITIALIZER ###

    def __init__(
        self,
        can_be_split=True,
        leading_rest_durations=None,
        minimum_timespan_duration=None,
        playing_durations=None,
        playing_groupings=None,
        tailing_rest_durations=None,
        ):
        TimespanAgent.__init__(
            self,
            can_be_split=can_be_split,
            minimum_timespan_duration=minimum_timespan_duration,
            )
        self._leading_rest_durations = self._to_duration_cursor(
            leading_rest_durations)
        self._playing_durations = self._to_duration_cursor(
            playing_durations)
        self._playing_groupings = self._to_grouping_cursor(
            playing_groupings)
        self._tailing_rest_durations = self._to_duration_cursor(
            tailing_rest_durations)

    ### SPECIAL METHODS ###

    def __call__(
        self,
        context_name=None,
        dependencies=None,
        initial_offset=None,
        maximum_offset=None,
        music_maker=None,
        ):
        from plague_water import makers
        assert isinstance(self.leading_rest_durations,
            (datastructuretools.StatalServerCursor, type(None))),\
            self.leading_rest_durations
        assert isinstance(self.playing_durations,
            datastructuretools.StatalServerCursor),\
            self.playing_durations
        assert isinstance(self.playing_groupings,
            datastructuretools.StatalServerCursor),\
            self.playing_groupings
        assert isinstance(self.tailing_rest_durations,
            (datastructuretools.StatalServerCursor, type(None))),\
            self.tailing_rest_durations
        assert isinstance(initial_offset, Duration), initial_offset
        assert isinstance(maximum_offset, Duration), maximum_offset
        timespan_inventory = timespantools.TimespanInventory()
        leading_rest_duration = Duration(0)
        if self.leading_rest_durations is not None:
            leading_rest_duration = self.leading_rest_durations()[0]
        playing_grouping = self.playing_groupings()[0]
        assert isinstance(playing_grouping, int), playing_grouping
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
            timespan = makers.PerformedTimespan(
                context_name=context_name,
                music_maker=music_maker,
                start_offset=start_offset,
                stop_offset=stop_offset,
                )
            timespan_inventory.append(timespan)
            start_offset = stop_offset
        stop_offset = timespan_inventory.stop_offset + tailing_rest_duration
        if maximum_offset < stop_offset:
            stop_offset = maximum_offset
        return timespan_inventory, stop_offset

    ### PUBLIC METHODS ###

    def transform_cursors(self, cursor_transform):
        from plague_water import makers
        if cursor_transform is None:
            return new(self)
        elif not isinstance(cursor_transform, makers.CursorTransform):
            if isinstance(cursor_transform, int):
                cursor_transform = (cursor_transform,)
            cursor_transform = makers.CursorTransform(*cursor_transform)
        assert isinstance(cursor_transform, makers.CursorTransform)
        leading_rest_durations = cursor_transform(self.leading_rest_durations)
        playing_durations = cursor_transform(self.playing_durations)
        playing_groupings = cursor_transform(self.playing_groupings)
        tailing_rest_durations = cursor_transform(self.tailing_rest_durations)
        return new(
            self,
            leading_rest_durations=leading_rest_durations,
            playing_durations=playing_durations,
            playing_groupings=playing_groupings,
            tailing_rest_durations=tailing_rest_durations,
            )

    ### PUBLIC PROPERTIES ###

    @property
    def leading_rest_durations(self):
        return self._leading_rest_durations

    @property
    def playing_durations(self):
        return self._playing_durations

    @property
    def playing_groupings(self):
        return self._playing_groupings

    @property
    def tailing_rest_durations(self):
        return self._tailing_rest_durations
