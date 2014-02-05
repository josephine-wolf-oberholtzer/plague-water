# -*- encoding: utf-8 -*-
import bisect
import collections
from abjad import *


class PlagueWaterObject(abctools.AbjadObject):

    ### CLASS VARIABLES ###

    __slots__ = (
        )

    ### SPECIAL METHODS ###

    def __eq__(self, expr):
        return systemtools.StorageFormatManager.compare(self, expr)

    def __hash__(self):
        hash_values = systemtools.StorageFormatManager.get_hash_values(self)
        return hash(hash_values)

    ### PRIVATE METHODS ###

    def _duration_and_ratio_to_offsets(
        self,
        duration=None,
        ratio=None,
        ):
        ratio_sum = sum(ratio)
        duration_parts = []
        for ratio_part in ratio:
            multiplier = Multiplier(ratio_part, ratio_sum)
            duration_part = duration * multiplier
            duration_parts.append(duration_part)
        offsets = mathtools.cumulative_sums(duration_parts)
        offsets = offsets[:-1]
        return offsets

    def _expr_to_cyclic_tuple(
        self,
        expr=None,
        seed=0,
        ):
        expr = expr or ()
        rotated_expr = sequencetools.rotate_sequence(expr, seed)
        cyclic_tuple = datastructuretools.CyclicTuple(rotated_expr)
        return cyclic_tuple

    def _expr_to_statal_server_cursor(self, argument):
        if argument is not None:
            assert isinstance(argument, (
                collections.Sequence,
                datastructuretools.StatalServer,
                datastructuretools.StatalServerCursor,
                ))
            if isinstance(argument, collections.Sequence):
                argument = datastructuretools.StatalServer(argument)
            if isinstance(argument, datastructuretools.StatalServer):
                argument = argument()
        assert isinstance(argument,
            (datastructuretools.StatalServerCursor, type(None)))
        return argument

    def _offset_and_offsets_to_index(
        self,
        offset=None,
        offsets=None,
        ):
        if offset in offsets:
            return offsets.index(offset)
        return bisect.bisect(offsets, offset) - 1

    def _ratio_and_talea_to_cursors(
        self,
        ratio=None,
        talea=None,
        ):
        talea_cursors = []
        for i in range(len(ratio)):
            subsequence = talea[i]
            cursor = self._expr_to_statal_server_cursor(subsequence)
            talea_cursors.append(cursor)
        return tuple(talea_cursors)

    ### PUBLIC METHODS ###

    def from_context_map(
        self,
        context_map,
        context_name,
        ):
        assert isinstance(context_map,
            (datastructuretools.ContextMap, type(None)))
        assert isinstance(context_name, (str, type(None)))
        manager = systemtools.StorageFormatManager
        parameters = manager.get_keyword_argument_dictionary(self)
        if context_map is not None and context_name is not None:
            for key, value in parameters.items():
                if value is not None:
                    continue
                if key in context_map[context_name]:
                    value = context_map[context_name][key]
                    parameters[key] = value
        return new(
            self,
            **parameters
            )
