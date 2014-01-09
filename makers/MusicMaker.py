# -*- encoding: utf-8 -*-
from abjad import *
from plague_water.makers.ContextAwareMaker import ContextAwareMaker


class MusicMaker(ContextAwareMaker):

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
        assert isinstance(seed, (int, type(None)))
        parameter_map = self.build_parameter_map(
            context_hierarchy, context_name)
        music = self.build_music(durations, parameter_map, seed)
        return music

    ### PUBLIC METHODS ###

    def build_music(self, durations, parameters, seed):
        durations = [x.pair for x in durations]
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
