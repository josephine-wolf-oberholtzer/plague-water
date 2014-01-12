# -*- encoding: utf-8 -*-
import collections
from abjad import *
from plague_water.makers.ContextAwareMaker import ContextAwareMaker


class ArticulationMaker(ContextAwareMaker):

    ### CLASS VARIABLES ###

    __slots__ = (
        '_all_leaves',
        '_first_leaf',
        '_inner_leaves',
        '_last_leaf',
        '_treat_each_cell',
        )

    ### INITIALIZER ###

    def __init__(
        self,
        all_leaves=None,
        first_leaf=None,
        inner_leaves=None,
        last_leaf=None,
        treat_each_cell=None,
        ):
        self._all_leaves = self._coerce_arguments(all_leaves)
        self._first_leaf = self._coerce_arguments(first_leaf)
        self._inner_leaves = self._coerce_arguments(inner_leaves)
        self._last_leaf = self._coerce_arguments(last_leaf)
        if treat_each_cell is not None:
            treat_each_cell = bool(treat_each_cell)
        self._treat_each_cell = treat_each_cell

    ### SPECIAL METHODS ###

    def __call__(
        self,
        music,
        context_map=None,
        context_name=None,
        seed=None,
        ):
        assert isinstance(seed, (int, type(None)))
        if self.treat_each_cell:
            for cell in music:
                ties = tuple(iterate(cell).by_logical_tie(pitched=True))
                self._treat_ties(ties, parameter_map)
        else:
            ties = tuple(iterate(music).by_logical_tie(pitched=True))
            self._treat_ties(ties, parameter_map)

    ### PRIVATE METHODS ###

    def _coerce_cursor_output(self, cursor_output):
        result = []
        for x in cursor_output:
            if x is None:
                continue
            elif isinstance(x, str):
                result.append(indicatortools.Articulation(x))
            else:
                result.append(copy.copy(x))
        return result

    def _treat_ties(self, ties, parameter_map):
        if 1 < len(ties):
            if parameter_map['first_leaf'] is not None:
                attachments = parameter_map['all_leaves']()
                for attachment in attachments:
                    attach(attachment, ties[0][0])
            if parameter_map['inner_leaves'] is not None:
                attachments = parameter_map['all_leaves']()
                for tie in ties[1:-1]:
                    for attachment in attachments:
                        attach(attachment, tie[0])
            if parameter_map['last_leaf'] is not None:
                attachments = parameter_map['all_leaves']()
                for attachment in attachments:
                    attach(attachment, ties[-1][0])
            if parameter_map['all_leaves'] is not None:
                attachments = parameter_map['all_leaves']()
                for tie in ties:
                    for attachment in attachments:
                        attach(attachment, tie[0])
        elif 1 == len(ties):
            if parameter_map['first_leaf'] is not None:
                attachments = parameter_map['all_leaves']()
                for attachment in attachments:
                    attach(attachment, ties[0][0])
            elif parameter_map['last_leaf'] is not None:
                attachments = parameter_map['all_leaves']()
                for attachment in attachments:
                    attach(attachment, ties[-1][0])
            if parameter_map['all_leaves'] is not None:
                attachments = parameter_map['all_leaves']()
                for tie in ties:
                    for attachment in attachments:
                        attach(attachment, tie[0])

    ### PUBLIC PROPERTIES ###

    @property
    def all_leaves(self):
        return self._all_leaves

    @property
    def first_leaf(self):
        return self._first_leaf

    @property
    def inner_leaves(self):
        return self._inner_leaves

    @property
    def last_leaf(self):
        return self._last_leaf

    @property
    def treat_each_cell(self):
        return self._treat_each_cell
