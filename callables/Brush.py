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
        assert brush_components is not None
        assert len(brush_components)
        assert all(isinstance(x, callables.BrushComponent)
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
        if isinstance(talea, int):
            talea = [talea]
        if isinstance(talea, (list, tuple)):
            talea = datastructuretools.StatalServer(talea)
        if isinstance(talea, datastructuretools.StatalServer):
            talea = talea()
        assert isinstance(talea, datastructuretools.StatalServerCursor)
        self._talea = talea

    ### SPECIAL METHODS ###

    def __call__(self, segment_target_duration):
        current_offset = Offset(0)
        can_continue = True
        timespan_inventory = timespantools.TimespanInventory()
        while can_continue:
            brush_component = self._choose_brush_component()
            brush_component_timespan_inventory, can_continue = brush_component(
                current_offset,
                segment_target_duration,
                )
            timespan_inventory.extend(brush_component_timespan_inventory)
            current_offset = brush_component_timespan_inventory.stop_offset
        return timespan_inventory

    ### PRIVATE METHODS ###

    def _choose_brush_component(self):
        seed = self.talea()[0]
        selected_brush_component = None
        for pair, brush_component in self.brush_component_pairs:
            low, high = pair
            if low <= seed < high:
                selected_brush_component = brush_component
                break
        result = selected_brush_component()
        return result

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
