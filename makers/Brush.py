# -*- encoding: utf-8 -*-
from abjad import *


class Brush(abctools.AbjadObject):

    ### CLASS VARIABLES ###

    __slots__ = (
        '_music_makers',
        '_music_maker_pairs',
        '_talea',
        )

    ### INITIALIZER ###

    def __init__(
        self,
        music_makers=None,
        talea=None,
        ):
        from plague_water import makers
        from plague_water import materials
        assert music_makers is not None
        assert len(music_makers)
        assert all(isinstance(x, makers.MusicMaker)
            for x in music_makers)
        self._music_makers = tuple(music_makers)
        weights = [x.weight for x in self._music_makers]
        pairs = mathtools.cumulative_sums_pairwise(
            mathtools.partition_integer_by_ratio(
                10,
                weights,
                )
            )
        self._music_maker_pairs = tuple(zip(pairs, self._music_makers))
        if talea is None:
            talea = materials.euler_numbers
        if isinstance(talea, int):
            talea = [talea]
        if isinstance(talea, (list, tuple)):
            talea = datastructuretools.StatalServer(talea)
        if isinstance(talea, datastructuretools.StatalServer):
            talea = talea()
        assert isinstance(talea, datastructuretools.StatalServerCursor)
        self._talea = talea

    ### SPECIAL METHODS ###

    def __call__(
        self,
        target_segment_duration,
        context_map=None,
        context_name=None,
        ):
        music_maker_pairs = self._build_music_maker_pairs(
            context_map=context_map,
            context_name=context_name,
            )
        current_offset = Offset(0)
        timespan_inventory = timespantools.TimespanInventory()
        message = '\t\t{}'.format(context_name)
        with systemtools.ProgressIndicator(message) as progress_indicator:
            while current_offset < target_segment_duration:
                music_maker = self._choose_music_maker(
                    music_maker_pairs)
                music_maker_timespan_inventory, current_offset = \
                    music_maker.create_timespans(
                        current_offset,
                        target_segment_duration,
                        )
                timespan_inventory.extend(music_maker_timespan_inventory)
                progress_indicator.advance()
        return timespan_inventory

    ### PRIVATE METHODS ###

    def _build_music_maker_pairs(
        self,
        context_map=None,
        context_name=None,
        ):
        contexted_music_makers = []
        for music_maker in self.music_makers:
            music_maker_parameter_map = music_maker._build_parameter_map(
                context_map=context_map,
                context_name=context_name,
                )
            contexted_music_maker = new(music_maker, **music_maker_parameter_map)
            contexted_music_makers.append(contexted_music_maker)
        if not contexted_music_makers:
            music_maker = makers.music_maker(
                music_maker=makers.MusicMaker(
                    rhythm_maker=rhythmmakertools.RestRhythmMaker(),
                    ),
                )
            contexted_music_makers.append(music_maker)
        weights = [x.weight for x in contexted_music_makers]
        pairs = mathtools.cumulative_sums_pairwise(
            mathtools.partition_integer_by_ratio(
                10,
                weights,
                )
            )
        music_maker_pairs = tuple(zip(pairs, contexted_music_makers))
        return music_maker_pairs

    def _choose_music_maker(self, music_maker_pairs):
        seed = self.talea()[0]
        selected_music_maker = None
        for pair, music_maker in music_maker_pairs:
            low, high = pair
            if low <= seed < high:
                selected_music_maker = music_maker
                break
        return selected_music_maker

    ### PUBLIC PROPERTIES ###

    @property
    def music_makers(self):
        return self._music_makers

    @property
    def music_maker_pairs(self):
        return self._music_maker_pairs

    @property
    def talea(self):
        return self._talea
