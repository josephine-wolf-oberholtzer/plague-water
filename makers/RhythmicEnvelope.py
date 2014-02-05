# -*- encoding: utf-8 -*-
from abjad import *
from plague_water.makers.PlagueWaterObject import PlagueWaterObject


class RhythmicEnvelope(PlagueWaterObject):

    ### CLASS VARIABLES ###

    __slots__ = (
        '_attack_rhythm_maker',
        '_decay_rhythm_maker',
        '_sustain_rhythm_maker',
        '_release_rhythm_maker',
        )

    ### INITIALIZER ###

    def __init__(
        self,
        attack_rhythm_maker=None,
        decay_rhythm_maker=None,
        sustain_rhythm_maker=None,
        release_rhythm_maker=None,
        ):
        assert isinstance(attack_rhythm_maker,
            (rhythmmakertools.RhythmMaker, type(None)))
        assert isinstance(decay_rhythm_maker,
            (rhythmmakertools.RhythmMaker, type(None)))
        assert isinstance(sustain_rhythm_maker,
            (rhythmmakertools.RhythmMaker, type(None)))
        assert isinstance(release_rhythm_maker,
            (rhythmmakertools.RhythmMaker, type(None)))
        if attack_rhythm_maker is None:
            attack_rhythm_maker = rhythmmakertools.RestRhythmMaker()
        if decay_rhythm_maker is None:
            decay_rhythm_maker = attack_rhythm_maker
        if sustain_rhythm_maker is None:
            sustain_rhythm_maker = attack_rhythm_maker
        if release_rhythm_maker is None:
            release_rhythm_maker = rhythmmakertools.RestRhythmMaker()
        self.attack_rhythm_maker = attack_rhythm_maker
        self.decay_rhythm_maker = decay_rhythm_maker
        self.sustain_rhythm_maker = sustain_rhythm_maker
        self.release_rhythm_maker = release_rhythm_maker

    ### SPECIAL METHODS ###

    def __call__(self, durations, seed=None):
        assert 0 < len(durations) and \
            all(isinstance(x, Duration) for x in durations)
        if seed is None:
            seed = 0
        result = []
        if len(durations) == 1:
            attack = self.attack_rhythm_maker((durations[0],), seed)
            result.extend(attack)
        elif len(durations) == 2:
            attack = self.attack_rhythm_maker((durations[0],), seed)
            release = self.release_rhythm_maker((durations[1],), seed)
            result.extend(attack, decay)
        elif len(durations) == 3:
            attack = self.attack_rhythm_maker((durations[0],), seed)
            decay = self.decay_rhythm_maker((durations[1],), seed)
            release = self.release_rhythm_maker((durations[2],), seed)
            result.extend(attack)
            result.extend(decay)
            result.extend(release)
        elif 3 < len(durations):
            attack = self.attack_rhythm_maker((durations[0],), seed)
            decay = self.decay_rhythm_maker((durations[1],), seed)
            sustain = self.sustain_rhythm_maker(durations[2:-1], seed)
            release = self.release_rhythm_maker((durations[-1],), seed)
            result.extend(attack)
            result.extend(decay)
            result.extend(sustain)
            result.extend(release)
        return result

    def __makenew__(self,
        attack_rhythm_maker=None,
        decay_rhythm_maker=None,
        sustain_rhythm_maker=None,
        release_rhythm_maker=None,
        ):
        attack_rhythm_maker = attack_rhythm_maker or self.attack_rhythm_maker
        decay_rhythm_maker = decay_rhythm_maker or self.decay_rhythm_maker
        sustain_rhythm_maker = sustain_rhythm_maker or \
            self.sustain_rhythm_maker
        release_rhythm_maker = release_rhythm_maker or \
            self.release_rhythm_maker
        return type(self)(
            attack_rhythm_maker=attack_rhythm_maker,
            decay_rhythm_maker=decay_rhythm_maker,
            sustain_rhythm_maker=sustain_rhythm_maker,
            release_rhythm_maker=release_rhythm_maker,
            )

    ### PUBLIC PROPERTIES ###

    @property
    def attack_rhythm_maker(self):
        return self._attack_rhythm_maker

    @property
    def decay_rhythm_maker(self):
        return self._decay_rhythm_maker

    @property
    def release_rhythm_maker(self):
        return self._release_rhythm_maker

    @property
    def sustain_rhythm_maker(self):
        return self._sustain_rhythm_maker
