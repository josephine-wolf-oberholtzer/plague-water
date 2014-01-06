# -*- encoding: utf-8 -*-
from abjad import *


class BrushComponent(abctools.AbjadObject):

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
        music_maker=None,
        leading_rest_durations=None,
        playing_durations=None,
        playing_groupings=None,
        tailing_rest_durations=None,
        weight=1,
        ):
        from plague_water import makers
        assert isinstance(music_maker, (makers.MusicMaker, type(None)))
        if music_maker is None:
            music_maker = makers.MusicMaker()
        self._music_maker = music_maker
        # playing durations
        if playing_durations is None:
            playing_durations = [Duration(1, 4), Duration(1, 4)]
        if isinstance(playing_durations, Duration):
            playing_durations = [playing_durations]
        if isinstance(playing_durations, (list, tuple)):
            playing_durations = datastructuretools.StatalServer(
                playing_durations)
        if isinstance(playing_durations, datastructuretools.StatalServer):
            playing_durations = playing_durations()
        assert isinstance(playing_durations,
            datastructuretools.StatalServerCursor)
        self._playing_durations = playing_durations
        # playing groupings
        if playing_groupings is None:
            playing_groupings = [1, 1]
        if isinstance(playing_groupings, int):
            playing_groupings = [playing_groupings]
        if isinstance(playing_groupings, (list, tuple)):
            playing_groupings = datastructuretools.StatalServer(
                playing_groupings)
        if isinstance(playing_groupings, datastructuretools.StatalServer):
            playing_groupings = playing_groupings()
        assert isinstance(playing_groupings,
            datastructuretools.StatalServerCursor)
        self._playing_groupings = playing_groupings
        # leading rest durations
        if leading_rest_durations is None:
            self._leading_rest_durations = leading_rest_durations
        else:
            if isinstance(leading_rest_durations, Duration):
                leading_rest_durations = [leading_rest_durations]
            if isinstance(leading_rest_durations, (list, tuple)):
                leading_rest_durations = datastructuretools.StatalServer(
                    leading_rest_durations)
            if isinstance(leading_rest_durations,
                datastructuretools.StatalServer):
                leading_rest_durations = leading_rest_durations()
            assert isinstance(leading_rest_durations,
                datastructuretools.StatalServerCursor)
            self._leading_rest_durations = leading_rest_durations
        # tailing rest durations
        if tailing_rest_durations is None:
            self._tailing_rest_durations = tailing_rest_durations
        else:
            if isinstance(tailing_rest_durations, Duration):
                tailing_rest_durations = [tailing_rest_durations]
            if isinstance(tailing_rest_durations, (list, tuple)):
                tailing_rest_durations = datastructuretools.StatalServer(
                    tailing_rest_durations)
            if isinstance(tailing_rest_durations,
                datastructuretools.StatalServer):
                tailing_rest_durations = tailing_rest_durations()
            assert isinstance(tailing_rest_durations,
                datastructuretools.StatalServerCursor)
            self._tailing_rest_durations = tailing_rest_durations
        # weight
        weight = int(weight)
        assert 0 < weight
        self._weight = int(weight)

    ### SPECIAL METHODS ###

    def __call__(self, initial_offset, maximum_offset):
        from plague_water import makers
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

    def __makenew__(
        self,
        music_maker=None,
        playing_durations=None,
        playing_groupings=None,
        leading_rest_durations=None,
        weight=None,
        ):
        music_maker = music_maker or self.music_maker
        playing_durations = playing_durations or self.playing_durations
        playing_groupings = playing_groupings or self.playing_groupings
        leading_rest_durations = \
            leading_rest_durations or self.leading_rest_durations
        tailing_rest_durations = \
            tailing_rest_durations or self.tailing_rest_durations
        weight = weight or self.weight
        return type(self)(
            leading_rest_durations=leading_rest_durations,
            music_maker=music_maker,
            playing_durations=playing_durations,
            playing_groupings=playing_groupings,
            tailing_rest_durations=tailing_rest_durations,
            weight=weight,
            )

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
