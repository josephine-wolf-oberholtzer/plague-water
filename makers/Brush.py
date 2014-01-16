# -*- encoding: utf-8 -*-
from abjad import *


class Brush(abctools.AbjadObject):

    ### CLASS VARIABLES ###

    __slots__ = (
        '_brush_components',
        '_brush_component_pairs',
        '_talea',
        )

    ### INITIALIZER ###

    def __init__(
        self,
        brush_components=None,
        talea=None,
        ):
        from plague_water import makers
        from plague_water import materials
        assert brush_components is not None
        assert len(brush_components)
        assert all(isinstance(x, makers.BrushComponent)
            for x in brush_components)
        self._brush_components = tuple(brush_components)
        weights = [x.weight for x in self._brush_components]
        pairs = mathtools.cumulative_sums_pairwise(
            mathtools.partition_integer_by_ratio(
                10,
                weights,
                )
            )
        self._brush_component_pairs = tuple(zip(pairs, self._brush_components))
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
        brush_component_pairs = self._build_brush_component_pairs(
            context_map=context_map,
            context_name=context_name,
            )
        current_offset = Offset(0)
        timespan_inventory = timespantools.TimespanInventory()
        message = '\t\t{}'.format(context_name)
        with systemtools.ProgressIndicator(message) as progress_indicator:
            while current_offset < segment_target_duration:
                brush_component = self._choose_brush_component(
                    brush_component_pairs)
                brush_component_timespan_inventory, current_offset = \
                    brush_component(
                        current_offset,
                        segment_target_duration,
                        )
                timespan_inventory.extend(brush_component_timespan_inventory)
                progress_indicator.advance()
        return timespan_inventory

    ### PRIVATE METHODS ###

    def _build_brush_component_pairs(
        self,
        context_map=None,
        context_name=None,
        ):
        contexted_brush_components = []
        for brush_component in self.brush_components:
            parameter_map = brush_component._build_parameter_map(
                context_map=context_map,
                context_name=context_name,
                )
            contexted_brush_component = new(brush_component, **parameter_map)
            contexted_brush_components.append(contexted_brush_component)
        if not contexted_brush_components:
            brush_component = makers.BrushComponent(
                music_maker=makers.MusicMaker(
                    rhythm_maker=rhythmmakertools.RestRhythmMaker(),
                    ),
                )
            contexted_brush_components.append(brush_component)
        weights = [x.weight for x in contexted_brush_components]
        pairs = mathtools.cumulative_sums_pairwise(
            mathtools.partition_integer_by_ratio(
                10,
                weights,
                )
            )
        brush_component_pairs = tuple(zip(pairs, contexted_brush_components))
        return brush_component_pairs

    def _choose_brush_component(self, brush_component_pairs):
        seed = self.talea()[0]
        selected_brush_component = None
        for pair, brush_component in brush_component_pairs:
            low, high = pair
            if low <= seed < high:
                selected_brush_component = brush_component
                break
        return selected_brush_component

    ### PUBLIC PROPERTIES ###

    @property
    def brush_components(self):
        return self._brush_components

    @property
    def brush_component_pairs(self):
        return self._brush_component_pairs

    @property
    def talea(self):
        return self._talea
