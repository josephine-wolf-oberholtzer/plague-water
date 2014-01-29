# -*- encoding: utf-8 -*-
from abjad.tools import datastructuretools
from abjad.tools import durationtools
from abjad.tools import systemtools
from abjad.tools import timespantools
from plague_water.makers.Maker import Maker


class Brush(Maker):

    ### CLASS VARIABLES ###

    __slots__ = (
        '_initial_music_maker',
        '_music_makers',
        )

    ### INITIALIZER ###

    def __init__(
        self,
        initial_music_maker=None,
        music_makers=None,
        talea=None,
        ):
        from plague_water import makers
        assert isinstance(initial_music_maker, (makers.MusicMaker, type(None)))
        self._initial_music_maker = initial_music_maker
        if music_makers is not None:
            assert len(music_makers)
            assert all(isinstance(x, makers.MusicMaker)
                for x in music_makers)
            music_makers = datastructuretools.CyclicTuple(music_makers)
        self._music_makers = music_makers

    ### SPECIAL METHODS ###

    def __call__(
        self,
        target_segment_duration,
        context_map=None,
        context_name=None,
        ):
        current_offset = durationtools.Offset(0)
        timespan_inventory = timespantools.TimespanInventory()
        message = '\t\t{}'.format(context_name)
        with systemtools.ProgressIndicator(message) as progress_indicator:
            if self.initial_music_maker is not None:
                music_maker_timespan_inventory, current_offset = \
                    self.initial_music_maker.create_timespans(
                        current_offset,
                        target_segment_duration,
                        )
                timespan_inventory.extend(music_maker_timespan_inventory)
                progress_indicator.advance()
            if self.music_makers:
                counter = 0
                while current_offset < target_segment_duration:
                    music_maker = self._music_makers[counter]
                    music_maker_timespan_inventory, current_offset = \
                        music_maker.create_timespans(
                            current_offset,
                            target_segment_duration,
                            )
                    timespan_inventory.extend(music_maker_timespan_inventory)
                    counter += 1
                    progress_indicator.advance()
        return timespan_inventory

    ### PUBLIC PROPERTIES ###

    @property
    def initial_music_maker(self):
        return self._initial_music_maker

    @property
    def music_makers(self):
        return self._music_makers
