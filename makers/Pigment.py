# -*- encoding: utf-8 -*-
from abjad import *
from plague_water.makers.ContextAwareMaker import ContextAwareMaker


class Pigment(ContextAwareMaker):

    ### CLASS VARIABLES ###

    __slots__ = (
        '_music_maker',
        )

    ### INITIALIZER ###

    def __init__(
        self,
        music_maker=None,
        ):
        from plague_water import makers
        assert isinstance(music_maker, (makers.MusicMaker, type(None)))
        self._music_maker = music_maker

    ### SPECIAL METHODS ###

    def __call__(
        self,
        initial_offset,
        maximum_offset,
        ):
        return self.music_maker.create_timespans(
            initial_offset=initial_offset,
            maximum_offset=maximum_offset,
            )

    ### PUBLIC PROPERTIES ###

    @property
    def music_maker(self):
        return self._music_maker
