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
        seed=None,
        ):
        assert len(durations)
        assert all(isinstance(x, Duration) for x in durations)
        assert isinstance(context_hierarchy,
            (datastructuretools.ContextHierarchy, type(None)))
        assert isinstance(context_name, (str, type(None)))
        assert isinstance(seed, (int, type(None)))
        parameters = self._build_parameters(context_hierarchy, context_name)
        music = self._build_music(durations, parameters, seed)
        return music

    def __eq__(self, expr):
        if isinstance(expr, type(self)):
            if format(expr, 'storage') == format(self, 'storage'):
                return True
        return False

    ### PRIVATE METHODS ###

    def _build_music(self, durations, parameters, seed):
        durations = [x.pair for x in durations]
        #rhythm_maker = rhythmmakertools.NoteRhythmMaker()
        #rhythm_maker = rhythmmakertools.EqualDivisionRhythmMaker(
        #    leaf_count=4,
        #    beam_each_cell=False,
        #    )
        rhythm_maker = rhythmmakertools.OutputIncisedNoteRhythmMaker(
            prefix_talea=[-2, -1, -3, -1, -2, -2],
            prefix_lengths=[1, 1, 0, 1],
            suffix_talea=[-1, -1, -2, -1, -1],
            suffix_lengths=[1, 0, 1],
            talea_denominator=32,
            prolation_addenda=[0, 1, 1, 0, 2, 0],
            secondary_divisions=[],
            decrease_durations_monotonically=False,
            tie_rests=False,
            beam_each_cell=False,
            beam_cells_together=False,
            )
        music = rhythm_maker(durations, seeds=seed)
        for i, x in enumerate(music):
            if isinstance(x, Tuplet) and x.is_trivial:
                music[i] = Container()
                music[i].extend(x)
        music = [Container([x]) for x in music]
        music = Container(music)
        beam = spannertools.GeneralizedBeam(
            #durations=durations,
            include_long_duration_notes=False,
            include_long_duration_rests=False,
            isolated_nib_direction=None,
            use_stemlets=True,
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
