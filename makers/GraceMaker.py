# -*- encoding: utf-8 -*-
from abjad import *
from plague_water.makers.PlagueWaterObject import PlagueWaterObject


class GraceMaker(PlagueWaterObject):

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
        segment_duration=None,
        ):
        previous_leaf = logical_tie.head._get_leaf(-1)
        if previous_leaf is None:
            return
        previous_leaf_duration = inspect_(previous_leaf).get_duration()
        if previous_leaf_duration < self.minimum_preceding_duration:
            if isinstance(previous_leaf, (scoretools.Note, scoretools.Chord)):
                return
        # LilyPond can't correctly typeset tuplets where the first leaf is a
        # rest, with an after-grace attached because it incorrectly computes
        # the slope for the tuplet bracket.
        parentage = inspect_(previous_leaf).get_parentage()
        tuplet = None
        for parent in parentage:
            if isinstance(parent, scoretools.Tuplet):
                tuplet = parent
                break
        if tuplet is not None:
            leaves = list(tuplet.select_leaves())
            if previous_leaf is leaves[0] and \
                isinstance(previous_leaf, scoretools.Rest):
                return
            elif previous_leaf is leaves[-1]:
                return

        grace_length = self._cursor()[0]
        if not grace_length:
            return
        kind = 'after'
        leaf_to_attach_to = previous_leaf
        grace_notes = scoretools.make_notes([0], [(1, 16)] * grace_length)
        if isinstance(leaf_to_attach_to, scoretools.MultimeasureRest):
            command = indicatortools.LilyPondCommand('stopStaff', 'before')
            attach(command, grace_notes[0])
            command = indicatortools.LilyPondCommand('startStaff', 'before')
            attach(command, grace_notes[0])
        if 1 < len(grace_notes):
            beam = Beam()
            attach(beam, grace_notes)
        assert len(grace_notes)
        grace_container = scoretools.GraceContainer(
            grace_notes,
            kind=kind,
            )
        override(grace_container).stem.length = 8
        override(grace_container).flag.stroke_style = \
            schemetools.Scheme('grace', force_quotes=True)
        attach(grace_container, leaf_to_attach_to)

    ### PUBLIC METHODS ###

    def rotate(self, n=1):
        n = int(n)
        lengths = sequencetools.rotate_sequence(self.lengths, n)
        return new(
            self,
            lengths=lengths,
            )

    ### PUBLIC PROPERTIES ###

    @property
    def lengths(self):
        return self._lengths

    @property
    def minimum_preceding_duration(self):
        return self._minimum_preceding_duration
