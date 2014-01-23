# -*- encoding: utf-8 -*-
import abc
import collections
from abjad import *


class Maker(abctools.AbjadObject):

    ### CLASS VARIABLES ###

    __slots__ = (
        )

    ### SPECIAL METHODS ###

    def __eq__(self, expr):
        return systemtools.StorageFormatManager.compare(self, expr)

    def __hash__(self):
        hash_values = systemtools.StorageFormatManager.get_hash_values(self)
        return hash(hash_values)

    def __makenew__(self, **kwargs):
        from abjad.tools import systemtools
        manager = systemtools.StorageFormatManager
        keyword_argument_dictionary = \
            manager.get_keyword_argument_dictionary(self)
        positional_argument_dictionary = \
            manager.get_positional_argument_dictionary(self)
        for key, value in kwargs.iteritems():
            if key in positional_argument_dictionary:
                positional_argument_dictionary[key] = value
            elif key in keyword_argument_dictionary:
                keyword_argument_dictionary[key] = value
            else:
                raise KeyError(key)
        positional_argument_values = []
        positional_argument_names = getattr(
            self, '_positional_argument_names', None) or \
            manager.get_positional_argument_names(self)
        for positional_argument_name in positional_argument_names:
            positional_argument_value = positional_argument_dictionary[
                positional_argument_name]
            positional_argument_values.append(positional_argument_value)
        result = type(self)(
            *positional_argument_values, **keyword_argument_dictionary)
        return result

    ### PRIVATE METHODS ###

    def _build_parameter_map(
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
        return parameters

    def _coerce_cursor_argument(self, argument):
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

    def _expr_to_cyclic_tuple(self, expr, seed):
        expr = expr or ()
        rotated_expr = sequencetools.rotate_sequence(expr, seed)
        cyclic_tuple = datastructuretools.CyclicTuple(rotated_expr)
        return cyclic_tuple

    ### PUBLIC METHODS ###
    
    def _build_parameter_map(
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
        return parameters

