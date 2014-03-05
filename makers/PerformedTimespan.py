# -*- encoding: utf-8 -*-
from abjad.tools import timespantools


class PerformedTimespan(timespantools.Timespan):

    ### CLASS VARIABLES ###

    __slots__ = (
        '_context_name',
        '_music_maker',
        )

    ### INITIALIZER ###

    def __init__(
        self,
        context_name=None,
        music_maker=None,
        start_offset=None,
        stop_offset=None,
        ):
        timespantools.Timespan.__init__(
            self,
            start_offset=start_offset,
            stop_offset=stop_offset,
            )
        self._context_name = context_name
        self._music_maker = music_maker

    ### PUBLIC PROPERTIES ###

    @property
    def context_name(self):
        return self._context_name

    @property
    def music_maker(self):
        return self._music_maker
