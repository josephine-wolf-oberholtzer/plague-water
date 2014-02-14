# -*- encoding: utf-8 -*-
from abjad import *
from plague_water.makers.TimespanAgent import TimespanAgent


class ConstantStepTimespanAgent(TimespanAgent):

    ### CLASS VARIABLES ###

    __slots__ = (
        '_step_durations',
        '_playing_durations',
        '_playing_groupings',
        )

    ### INITIALIZER ###

    def __init__(
        self,
        can_be_split=True,
        playing_durations=None,
        playing_groupings=None,
        minimum_timespan_duration=None,
        step_durations=None,
        ):
        TimespanAgent.__init__(
            self,
            can_be_split=can_be_split,
            minimum_timespan_duration=minimum_timespan_duration,
            )
        self._playing_durations = self._to_duration_cursor(
            playing_durations)
        self._playing_groupings = self._to_grouping_cursor(
            playing_groupings)
        self._step_durations = self._to_duration_cursor(
            step_durations)

    ### SPECIAL METHODS ###

    def __call__(
        self,
        dependencies=None,
        initial_offset=None,
        maximum_offset=None,
        music_maker=None,
        ):
        assert isinstance(self.playing_durations,
            datastructuretools.StatalServerCursor),\
            self.playing_durations
        assert isinstance(self.playing_groupings,
            datastructuretools.StatalServerCursor),\
            self.playing_groupings
        assert isinstance(self.step_durations,
            (datastructuretools.StatalServerCursor, type(None))),\
            self.step_durations
        assert isinstance(initial_offset, Duration), initial_offset
        assert isinstance(maximum_offset, Duration), maximum_offset
        timespan_inventory = timespantools.TimespanInventory()
        step_duration = self.step_durations()[0]
        stop_offset = initial_offset + step_duration
        if maximum_offset < stop_offset:
            stop_offset = maximum_offset
        playing_grouping = self.playing_groupings()[0]
        playing_durations = list(self.playing_durations(playing_grouping))
        while step_duration < sum(playing_durations):
            playing_durations.pop()
        current_offset = initial_offset
        for duration in playing_durations:
            timespan = timespantools.AnnotatedTimespan(
                annotation=music_maker,
                start_offset=current_offset,
                stop_offset=current_offset + duration,
                )
            timespan_inventory.append(timespan)
            current_offset += duration
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
        playing_durations = cursor_transform(self.playing_durations)
        playing_groupings = cursor_transform(self.playing_groupings)
        step_durations = cursor_transform(self.step_durations)
        return new(
            self,
            playing_durations=playing_durations,
            playing_groupings=playing_groupings,
            step_durations=step_durations,
            )

    ### PUBLIC PROPERTIES ###

    @property
    def playing_durations(self):
        return self._playing_durations

    @property
    def playing_groupings(self):
        return self._playing_groupings

    @property
    def step_durations(self):
        return self._step_durations
