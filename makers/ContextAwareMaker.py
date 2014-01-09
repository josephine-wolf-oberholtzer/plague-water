# -*- encoding: utf-8 -*-
import abc
from abjad import *


class ContextAwareMaker(abctools.AbjadObject):

    ### CLASS VARIABLES ###

    __slots__ = (
        )

    ### INITIALIZER ###

    @abc.abstractmethod
    def __init__(self):
        raise NotImplemented

    ### SPECIAL METHODS ###

    @abc.abstractmethod
    def __call__(self, context_hierarchy, context_name):
        raise NotImplemented

    def __eq__(self, expr):
        if isinstance(expr, type(self)):
            if format(expr, 'storage') == format(self, 'storage'):
                return True
        return False

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

    def _build_parameters(
        self,
        context_hierarchy,
        context_name,
        ):
        assert isinstance(context_hierarchy,
            (datastructuretools.ContextHierarchy, type(None)))
        assert isinstance(context_name, (str, type(None)))
        manager = systemtools.StorageFormatManager
        parameters = manager.get_keyword_argument_dictionary(self)
        if context_hierarchy is not None and context_name is not None:
            for key, value in parameters.items():
                if value is not None:
                    continue
                value = context_hierarchy.get(context_name, key)
                parameters[key] = value
        for key, value in parameters.iteritems():
            assert value is not None, key
        return parameters
