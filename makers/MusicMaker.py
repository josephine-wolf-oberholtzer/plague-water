# -*- encoding: utf-8 -*-
from abjad import *


class MusicMaker(abctools.AbjadObject):

    ### CLASS VARIABLES ###

    __slots__ = (
        )

    ### INITIALIZER ###

    def __init__(self):
        pass

    ### SPECIAL METHODS ###

    def __call__(
        self,
        durations,
        context_hierarchy=None,
        context_name=None,
        ):
        assert len(durations)
        assert all(isinstance(x, Duration) for x in durations)
        assert isinstance(context_hierarchy,
            (datastructuretools.ContextHierarchy, type(None)))
        assert isinstance(context_name, (str, type(None)))
        parameters = self._build_parameters(context_hierarchy, context_name)
        music = self._build_music(durations, parameters)
        return music

    def __eq__(self, expr):
        if isinstance(expr, type(self)):
            if format(expr, 'storage') == format(self, 'storage'):
                return True
        return False

    ### PRIVATE METHODS ###

    def _build_music(self, durations, parameters):
        note_maker = rhythmmakertools.NoteRhythmMaker()
        music = note_maker(durations)
        music = [Container(x) for x in music]
        music = Container(music)
        beam = spannertools.DuratedComplexBeam(
            durations=durations,
            isolated_nib_direction=False,
            )
        attach(beam, music)
        return music

    def _build_parameters(
        self,
        context_hierarchy,
        context_name,
        ):
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
