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
        seed=None,
        ):
        durations = [Duration(x) for x in durations]
        seed = int(seed)
        assert len(durations)
        assert isinstance(self.rhythm_maker, rhythmmakertools.RhythmMaker)
        music = self.rhythm_maker(durations, seeds=seed)
        for i, x in enumerate(music):
            if isinstance(x, Tuplet) and x.is_trivial:
                music[i] = Container()
                music[i].extend(x)
        music = Container(music)
        if self.pitch_maker is not None:
            self.pitch_maker(music, seed)
        if self.dynamics_maker is not None:
            self.dynamics_maker(music, seed)
        if self.articulation_maker is not None:
            self.articulation_maker(music, seed)
        beam = spannertools.GeneralizedBeam(
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
