# -*- encoding: utf-8 -*-
from abjad import *
from plague_water.makers.TimespanAgent import TimespanAgent


class DependentTimespanAgent(TimespanAgent):

    ### CLASS VARIABLES ###

    __slots__ = (
        '_labels',
        '_use_attacks',
        '_use_releases',
        )

    ### INITIALIZER ###

    def __init__(
        self,
        labels=None,
        use_attacks=True,
        use_releases=False,
        ):
        TimespanAgent.__init__(
            self,
            can_be_split=False,
            minimum_timespan_duration=None,
            )
        if isinstance(labels, str):
            labels = (labels,)
        if labels is not None:
            labels = tuple(labels)
        self._labels = labels
        self._use_attacks = bool(use_attacks)
        self._use_releases = bool(use_releases)

    ### SPECIAL METHODS ###

    def __call__(
        self,
        context_name=None,
        dependencies=None,
        initial_offset=None,
        maximum_offset=None,
        music_maker=None,
        ):
        from plague_water import makers
        assert initial_offset == 0
        assert dependencies
        dependency_timespans = timespantools.TimespanInventory()
        for dependency in dependencies:
            dependency_timespans.extend(dependency.timespan_inventory)
        if self.labels is not None:
            dependency_timespans[:] = [x for x in dependency_timespans if
                x.music_maker.labels is not None and
                any(label in x.music_maker.labels for label in self.labels)
                ]
        dependency_timespans.sort()
        timespan_inventory = timespantools.TimespanInventory()
        for group in dependency_timespans.partition(
            include_tangent_timespans=False):
            offsets = set([group.start_offset, group.stop_offset])
            if self.use_attacks:
                for timespan in group:
                    offsets.add(timespan.start_offset)
            if self.use_releases:
                for timespan in group:
                    offsets.add(timespan.stop_offset)
            offsets = sorted(offsets)
            for start, stop in sequencetools.iterate_sequence_nwise(offsets):
                timespan = makers.PerformedTimespan(
                    context_name=context_name,
                    music_maker=music_maker,
                    start_offset=start,
                    stop_offset=stop,
                    )
                timespan_inventory.append(timespan)
        timespan_inventory.sort()
        return timespan_inventory, maximum_offset

    ### PUBLIC PROPERTIES ###

    @property
    def labels(self):
        return self._labels

    @property
    def use_attacks(self):
        return self._use_attacks

    @property
    def use_releases(self):
        return self._use_releases
