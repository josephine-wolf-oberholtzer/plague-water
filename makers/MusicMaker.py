# -*- encoding: utf-8 -*-
from abjad import *
from plague_water.makers.ContextAwareMaker import ContextAwareMaker


class MusicMaker(ContextAwareMaker):

    ### CLASS VARIABLES ###

    __slots__ = (
        '_articulation_maker',
        '_dynamics_maker',
        '_pitch_maker',
        '_rhythm_maker',
        )

    ### INITIALIZER ###

    def __init__(
        self,
        articulation_maker=None,
        dynamics_maker=None,
        pitch_maker=None,
        rhythm_maker=None,
        ):
        from plague_water import makers
        assert isinstance(articulation_maker,
            (makers.ArticulationMaker, type(None)))
        assert isinstance(dynamics_maker,
            (makers.DynamicsMaker, type(None)))
        assert isinstance(pitch_maker,
            (makers.PitchMaker, type(None)))
        assert isinstance(rhythm_maker,
            (rhythmmakertools.RhythmMaker, type(None)))
        self._articulation_maker = articulation_maker
        self._dynamics_maker = dynamics_maker
        self._pitch_maker = pitch_maker
        self._rhythm_maker = rhythm_maker

    ### SPECIAL METHODS ###

    def __call__(
        self,
        durations,
        context_map=None,
        context_name=None,
        seed=None,
        ):
        from plague_water import makers
        assert len(durations)
        assert all(isinstance(x, Duration) for x in durations)
        assert isinstance(seed, (int, type(None)))
        parameter_map = self._build_parameter_map(
            context_map, context_name)
#        assert isinstance(parameter_map['articulation_maker'],
#            makers.ArticulationMaker)
#        assert isinstance(parameter_map['dynamics_maker'],
#            makers.DynamicsMaker)
#        assert isinstance(parameter_map['pitch_maker'],
#            makers.PitchMaker)
#        assert isinstance(parameter_map['rhythm_maker'],
#            rhythmmakertools.RhythmMaker)
        music = self._build_music(durations, parameter_map, seed)
        return music

    ### PRIVATE METHODS ###

    def _build_music(self, durations, parameters, seed):
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

    ### PUBLIC PROPERTIES ###

    @property
    def articulation_maker(self):
        return self._articulation_maker

    @property
    def dynamics_maker(self):
        return self._dynamics_maker

    @property
    def pitch_maker(self):
        return self._pitch_maker

    @property
    def rhythm_maker(self):
        return self._rhythm_maker
