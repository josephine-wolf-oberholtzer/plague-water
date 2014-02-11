# -*- encoding: utf-8 -*-
from abjad import *
from plague_water.makers.PlagueWaterObject import PlagueWaterObject


class GraceAgent(PlagueWaterObject):

    ### CLASS VARIABLES ###

    __slots__ = (
        '_cursor',
        '_lengths',
        '_minimum_preceding_duration',
        )

    ### INITIALIZER ###

    def __init__(
        self,
        lengths=(1,),
        minimum_preceding_duration=Duration(1, 16),
        ):
        assert len(lengths)
        assert mathtools.all_are_nonnegative_integers(lengths)
        lengths = tuple(lengths)
        self._lengths = lengths
        minimum_preceding_duration = Duration(minimum_preceding_duration)
        self._minimum_preceding_duration = minimum_preceding_duration
        self._cursor = self._expr_to_statal_server_cursor(lengths)

    ### SPECIAL METHODS ###

    def __call__(
        self,
        logical_tie,
        measure_offsets=None,
        segment_duration=None,
        ):
        previous_leaf = logical_tie.head._get_leaf(-1)
        if previous_leaf is None:
            return
        elif isinstance(previous_leaf, scoretools.MultimeasureRest):
            return
        previous_leaf_duration = inspect_(previous_leaf).get_duration()
        if previous_leaf_duration < self.minimum_preceding_duration:
            return
        grace_length = self._cursor()[0]
        if not grace_length:
            return
        start_offset = logical_tie.get_timespan().start_offset
        if start_offset in measure_offsets:
            kind = 'after'
            leaf_to_attach_to = previous_leaf
        else:
            kind = 'grace'
            leaf_to_attach_to = logical_tie.head
        grace_notes = scoretools.make_notes([0], [(1, 16)] * grace_length)
        if 1 < len(grace_notes):
            beam = Beam()
            attach(beam, grace_notes)
        grace_container = scoretools.GraceContainer(
            grace_notes,
            kind=kind,
            )
        override(grace_container).stem.length = 8
        attach(grace_container, leaf_to_attach_to)
        leaves = list(grace_notes) + [logical_tie.head]
        leaves = selectiontools.SliceSelection(leaves)
        phrasing_slur = spannertools.PhrasingSlur()
        phrasing_slur._contiguity_constraint = None
        attach(phrasing_slur, leaves)

    ### PUBLIC PROPERTIES ###

    @property
    def lengths(self):
        return self._lengths

    @property
    def minimum_preceding_duration(self):
        return self._minimum_preceding_duration
