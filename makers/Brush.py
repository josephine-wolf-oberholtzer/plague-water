# -*- encoding: utf-8 -*-
from abjad import *


class Brush(abctools.AbjadObject):

    ### CLASS VARIABLES ###

    __slots__ = (
        '_pigments',
        '_pigment_pairs',
        '_talea',
        )

    ### INITIALIZER ###

    def __init__(
        self,
        pigments=None,
        talea=None,
        ):
        from plague_water import makers
        from plague_water import materials
        assert pigments is not None
        assert len(pigments)
        assert all(isinstance(x, makers.Pigment)
            for x in pigments)
        self._pigments = tuple(pigments)
        weights = [x.weight for x in self._pigments]
        pairs = mathtools.cumulative_sums_pairwise(
            mathtools.partition_integer_by_ratio(
                10,
                weights,
                )
            )
        self._pigment_pairs = tuple(zip(pairs, self._pigments))
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
        segment_target_duration,
        context_map=None,
        context_name=None,
        ):
        pigment_pairs = self._build_pigment_pairs(
            context_map=context_map,
            context_name=context_name,
            )
        current_offset = Offset(0)
        timespan_inventory = timespantools.TimespanInventory()
        message = '\t\t{}'.format(context_name)
        with systemtools.ProgressIndicator(message) as progress_indicator:
            while current_offset < segment_target_duration:
                pigment = self._choose_pigment(
                    pigment_pairs)
                pigment_timespan_inventory, current_offset = \
                    pigment(
                        current_offset,
                        segment_target_duration,
                        )
                timespan_inventory.extend(pigment_timespan_inventory)
                progress_indicator.advance()
        return timespan_inventory

    ### PRIVATE METHODS ###

    def _build_pigment_pairs(
        self,
        context_map=None,
        context_name=None,
        ):
        contexted_pigments = []
        for pigment in self.pigments:
            parameter_map = pigment._build_parameter_map(
                context_map=context_map,
                context_name=context_name,
                )
            contexted_pigment = new(pigment, **parameter_map)
            contexted_pigments.append(contexted_pigment)
        if not contexted_pigments:
            pigment = makers.Pigment(
                music_maker=makers.MusicMaker(
                    rhythm_maker=rhythmmakertools.RestRhythmMaker(),
                    ),
                )
            contexted_pigments.append(pigment)
        weights = [x.weight for x in contexted_pigments]
        pairs = mathtools.cumulative_sums_pairwise(
            mathtools.partition_integer_by_ratio(
                10,
                weights,
                )
            )
        pigment_pairs = tuple(zip(pairs, contexted_pigments))
        return pigment_pairs

    def _choose_pigment(self, pigment_pairs):
        seed = self.talea()[0]
        selected_pigment = None
        for pair, pigment in pigment_pairs:
            low, high = pair
            if low <= seed < high:
                selected_pigment = pigment
                break
        return selected_pigment

    ### PUBLIC PROPERTIES ###

    @property
    def pigments(self):
        return self._pigments

    @property
    def pigment_pairs(self):
        return self._pigment_pairs

    @property
    def talea(self):
        return self._talea
