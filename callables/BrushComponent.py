# -*- encoding: utf-8 -*-
from abjad import *


class BrushComponent(abctools.AbjadObject):

    ### CLASS VARIABLES ###

    __slots__(
        '_color',
        '_playing_durations',
        '_playing_groupings',
        '_resting_durations',
        '_weight',
        )

    ### INITIALIZER ###

    def __init__(
        self,
        color=None,
        playing_durations=None,
        playing_groupings=None,
        resting_durations=None,
        weight=1,
        ):
        self._color = color
        # playing durations
        if isinstance(playing_durations, int):
            playing_durations = datastructuretools.StatalServer(
                [Duration(playing_durations, self.default_denominator)],
                )()
        elif isinstance(playing_durations, (list, tuple)):
            playing_durations = datastructuretools.StatalServer(
                playing_durations)()
        elif isinstance(playing_durations, datastructuretools.StatalServer):
            playing_durations = playing_durations()
        assert isinstance(playing_durations,
            datastructuretools.StatalServerCursor)
        self._playing_durations = playing_durations
        # playing groupings
        if isinstance(playing_groupings, (list, tuple)):
            playing_groupings = datastructuretools.StatalServer(
                playing_groupings)()
        elif isinstance(playing_groupings, datastructuretools.StatalServer):
            playing_groupings = playing_groupings()
        assert isinstance(playing_groupings,
            datastructuretools.StatalServerCursor)
        self._playing_groupings = playing_groupings
        # resting durations
        if isinstance(resting_durations, int):
            resting_durations = datastructuretools.StatalServer(
                [Duration(resting_durations, self.default_denominator)],
                )()
        elif isinstance(resting_durations, (list, tuple)):
            resting_durations = datastructuretools.StatalServer(
                resting_durations)()
        elif isinstance(resting_durations, datastructuretools.StatalServer):
            resting_durations = resting_durations()
        assert isinstance(resting_durations,
            datastructuretools.StatalServerCursor)
        self._resting_durations = resting_durations
        # weight
        weight = int(weight)
        assert 0 < weight
        self._weight = int(weight)

    ### SPECIAL METHODS ###

    def __call__(self, initial_offset, maximum_offset):
        assert isinstance(initial_offset, durationtools.Offset)
        assert isinstance(maximum_offset, durationtools.Offset)
        timespan_inventory = timespantools.TimespanInventory()
        resting_duration = self.resting_durations()[0]
        playing_grouping = self.playing_groupings()[0]
        playing_durations = self.playing_durations(playing_grouping)
        start_offset = initial_offset + resting_duration
        if maximum_offset <= start_offset:
            return timespan_inventory, False
        for playing_duration in playing_durations:
            stop_offset = stop_offset + playing_duration
            if maximum_offset <= stop_offset:
                return timespan_inventory, False
            timespan = timespantools.Timespan(
                start_offset=start_offset,
                stop_offset=stop_offset,
                )
            timespan_inventory.append(timespan)
            start_offset = stop_offset
        return timespan_inventory, True

    def __makenew__(
        self,
        color=None,
        playing_durations=None,
        playing_groupings=None,
        resting_durations=None,
        weight=None,
        ):
        color = color or self.color
        playing_durations = playing_durations or self.playing_durations
        playing_groupings = playing_groupings or self.playing_groupings
        resting_durations = resting_durations or self.resting_durations
        weight = weight or self.weight
        return type(self)(
            color=color,
            playing_durations=playing_durations,
            playing_groupings=playing_groupings,
            resting_durations=resting_durations,
            weight=weight,
            )

    ### PUBLIC PROPERTIES ###

    @property
    def color(self):
        return self._color

    @property
    def default_denominator(self):
        return 16

    @property
    def playing_durations(self):
        return self._playing_durations

    @property
    def playing_groupings(self):
        return self._playing_groupings

    @property
    def resting_durations(self):
        return self._resting_groupings

    @property
    def weight(self):
        return self._weight
