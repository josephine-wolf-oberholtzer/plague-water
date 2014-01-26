# -*- encoding: utf-8 -*-
import collections
from abjad import *
from plague_water.makers.Maker import Maker


class RegistrationMaker(Maker):

    ### CLASS VARIABLES ###

    __slots__ = (
        '_inflections',
        '_octavations',
        '_registration',
        )

    ### INITIALIZER ###

    def __init__(
        self,
        inflections=None,
        octavations=None,
        registration=None,
        ):
        from plague_water import makers
        if registration is not None:
            prototype = makers.RegisterCurve
            if not isinstance(registration, prototype):
                registration = pitchtools.NamedPitch(registration)
        self._registration = registration
        if inflections is not None:
            result = []
            assert isinstance(inflections, collections.Sequence)
            for x in inflections:
                if not isinstance(x, makers.RegisterCurve):
                    x = pitchtools.NamedPitch(x)
                result.append(x)
            inflections = self._expr_to_statal_server_cursor(result)
        self._inflections = inflections
        self._octavations = self._expr_to_statal_server_cursor(octavations)

    ### SPECIAL METHODS ###

    def __call__(
        self,
        music,
        segment_duration=None,
        ):
        from plague_water import makers
        assert isinstance(music, Container)
        assert self.registration is not None
        assert self.octavations is not None
        prototype = makers.RegisterCurve
        music_start_offset = inspect_(music).get_timespan().start_offset()
        music_duration = inspect_(music).get_duration()
        global_registration = self.global_registration
        if isinstance(global_registration, prototype):
            x = music_start_offset / segment_duration
            global_registration = int(global_registration.get_y_at_x(x))
            global_registration = pitchtools.NamedPitch(global_registration)
        inflection = 0
        for logical_tie in iterate(division).by_logical_tie(pitched=True):
            tie_start_offset = logical_tie.get_timespan().start_offset
            if self.inflections:
                inflection = self.inflections(1)[0]
                if isinstance(inflection, prototype):
                    x = tie_start_offset / music_duration
                    inflection = int(inflection.get_y_at_x(x))
                    inflection = pitchtools.NamedPitch(inflection)
            local_registration = global_registration + inflection
            octavation = pitchtools.Octave(self.octavations(1)[0])
            octave_transposition_mapping = \
                pitchtools.OctaveTranspositionMapping([
                    ('[C0, C4)', local_registration),
                    ('[C4, C8)', local_registration + 6),
                    ])
            pitch = logical_tie[0].written_pitch
            pitch = NamedPitch(pitch.named_pitch_class, octavation)
            pitch = octave_transposition_mapping(pitch)
            for note in logical_tie:
                note.written_pitch = new_pitch

    ### PUBLIC PROPERTIES ###

    @property
    def inflections(self):
        return self._inflections

    @property
    def octavations(self):
        return self._octavations

    @property
    def registration(self):
        return self._registration
