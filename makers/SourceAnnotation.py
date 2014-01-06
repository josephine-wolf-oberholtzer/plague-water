# -*- encoding: utf-8 -*-

from abjad import *


class SourceAnnotation(abctools.AbjadObject):

    ### CLASS VARIABLES ###

    __slots__ = (
        '_source',
        )

    ### INITIALIZER ###

    def __init__(self, source=None):
        from plague_water import makers
        assert isinstance(source, (makers.MusicMaker, type(None)))
        self._source = source
