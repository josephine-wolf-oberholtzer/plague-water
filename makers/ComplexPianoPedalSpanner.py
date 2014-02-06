# -*- encoding: utf-8 -*-
from abjad.tools.spannertools.Spanner import Spanner


class ComplexPianoPedalSpanner(Spanner):

    ### CLASS VARIABLES ###

    __slots__ = (
        '_include_inner_leaves',
        )

    ### INITIALIZER ###

    def __init__(
        self,
        include_inner_leaves=False,
        overrides=None,
        ):
        Spanner.__init__(
            self,
            overrides=overrides,
            )
        self._include_inner_leaves = bool(include_inner_leaves)

    ### PRIVATE PROPERTIES ###

    def _copy_keyword_args(self, new):
        new._include_inner_leaves = self.include_inner_leaves

    def _format_right_of_leaf(self, leaf):
        result = []
        if self._is_my_first_leaf(leaf):
            result.append(r'\sustainOn')
        elif self.include_inner_leaves and not self._is_my_last_leaf(leaf):
            result.append(r'\sustainOff \sustainOn')
        return result

    def _format_after_leaf(self, leaf):
        result = []
        if self._is_my_last_leaf(leaf):
            result.append(r'<> \sustainOff')
        return result

    ### PUBLIC PROPERTIES ###

    @property
    def include_inner_leaves(self):
        r'''Gets inclusion of inner leaves.

        Returns boolean.
        '''
        return self._include_inner_leaves
