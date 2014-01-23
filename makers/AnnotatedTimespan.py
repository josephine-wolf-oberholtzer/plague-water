# -*- encoding: utf-8 -*-
from abjad import timespantools


class AnnotatedTimespan(timespantools.Timespan):

    ### CLASS VARIABLES ###

    __slots__ = (
        '_music_maker',
        )

    ### INITIALIZER ###

    def __init__(
        self,
        start_offset=None,
        stop_offset=None,
        music_maker=None,
        ):
        from plague_water import makers
        assert isinstance(music_maker, (makers.MusicMaker, type(None)))
        timespantools.Timespan.__init__(
            self,
            start_offset=start_offset,
            stop_offset=stop_offset,
            )
        self._music_maker = music_maker

    ### PUBLIC PROPERTIES ###

    @property
    def music_maker(self):
        return self._music_maker
