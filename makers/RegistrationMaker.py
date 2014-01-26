# -*- encoding: utf-8 -*-
import collections
from abjad import *
from plague_water.makers.Maker import Maker


class RegistrationMaker(Maker):

    ### CLASS VARIABLES ###

    __slots__ = (
        '_division_inflections',
        '_global_inflection',
        '_octavations',
        '_phrase_inflections',
        )

    ### INITIALIZER ###

    def __init__(
        self,
        division_inflections=None,
        global_inflection=None,
        octavations=None,
        phrase_inflections=None,
        ):
        from plague_water import makers
        if global_inflection is not None:
            prototype = makers.RegisterCurve
            if not isinstance(global_inflection, prototype):
                global_inflection = pitchtools.NamedPitch(global_inflection)
        if phrase_inflections is not None:
            result = []
            assert isinstance(phrase_inflections, collections.Sequence)
            for x in phrase_inflections:
                if not isinstance(x, makers.RegisterCurve):
                    x = pitchtools.NamedPitch(x)
                result.append(x)
            phrase_inflections = self._expr_to_statal_server_cursor(result)
        if division_inflections is not None:
            result = []
            assert isinstance(division_inflections, collections.Sequence)
            for x in division_inflections:
                if not isinstance(x, makers.RegisterCurve):
                    x = pitchtools.NamedPitch(x)
                result.append(x)
            division_inflections = self._expr_to_statal_server_cursor(result)
        self._global_inflection = global_inflection
        self._division_inflections = division_inflections
        self._phrase_inflections = phrase_inflections
        self._octavations = self._expr_to_statal_server_cursor(octavations)

    ### SPECIAL METHODS ###

    def __call__(
        self,
        music,
        segment_duration,
        ):
        assert isinstance(music, Container)
        octavation_cursor = self._get_octavation_cursor()
        music_start_offset = inspect_(music).get_timespan().start_offset
        global_inflection_curve = self._get_inflection_curve(
            self.global_inflection)
        phrase_inflection_curve = self._get_inflection_curve_from_cursor(
            self.phrase_inflections)
        iterator = iterate(music).by_logical_tie(pitched=True)
        all_logical_ties = [x for x in iterator]
        music_duration = all_logical_ties[-1].get_timespan().start_offset - \
            music_start_offset
        for division in music:
            division_inflection_curve = self._get_inflection_curve_from_cursor(
                self.division_inflections)
            logical_ties = [logical_tie for logical_tie in all_logical_ties
                if division in inspect_(logical_tie.head).get_parentage()]
            for i, logical_tie in enumerate(logical_ties):
                tie_start_offset = logical_tie.get_timespan().start_offset
                division_position = Offset(i, len(logical_ties))
                division_inflection_pitch = division_inflection_curve(
                    division_position)
                division_inflection_interval = \
                    NamedPitch("c'") - division_inflection_pitch
                phrase_position = \
                    (tie_start_offset - music_start_offset) / music_duration
                phrase_inflection_pitch = \
                    phrase_inflection_curve(phrase_position)
                phrase_inflection_interval = \
                    NamedPitch("c'") - phrase_inflection_pitch
                global_position = tie_start_offset / segment_duration
                global_inflection_pitch = \
                    global_inflection_curve(global_position)
                global_inflection_interval = \
                    NamedPitch("c'") - global_inflection_pitch
                local_inflection_interval = (
                    float(division_inflection_interval) +
                    float(phrase_inflection_interval) +
                    float(global_inflection_interval)
                    )
                local_inflection_pitch = \
                    NamedPitch("c'").transpose(local_inflection_interval)
                octavation = pitchtools.Octave(octavation_cursor(1)[0])
                self._apply_inflection_to_logical_tie(
                    inflection_pitch=local_inflection_pitch,
                    octavation=octavation,
                    logical_tie=logical_tie,
                    )

    ### PRIVATE METHODS ###

    def _apply_inflection_to_logical_tie(
        self,
        inflection_pitch=None,
        octavation=None,
        logical_tie=None,
        ):
        octave_transposition_mapping = \
            pitchtools.OctaveTranspositionMapping([
                ('[C0, C4)', inflection_pitch),
                ('[C4, C8)', inflection_pitch + 6),
                ])
        original_pitch = logical_tie[0].written_pitch
        octavated_pitch = NamedPitch(
            original_pitch.named_pitch_class,
            octavation,
            )
        registrated_pitch = octave_transposition_mapping([octavated_pitch])
        for note in logical_tie:
            note.written_pitch = registrated_pitch
        #print original_pitch, octavation, octavated_pitch, registrated_pitch

    def _get_inflection_curve(self, inflection_curve):
        from plague_water import makers
        if inflection_curve is None:
            inflection_curve = makers.RegisterCurve(
                ratio=(1,),
                registers=(0, 0),
                )
        elif not isinstance(inflection_curve, makers.RegisterCurve):
            inflection_curve = makers.RegisterCurve(
                ratio=(1,),
                registers=(
                    inflection_curve,
                    inflection_curve,
                    ),
                )
        return inflection_curve

    def _get_inflection_curve_from_cursor(self, inflection_cursor):
        if inflection_cursor is None:
            inflection_curve = None
        else:
            inflection_curve = inflection_cursor(1)[0]
        return self._get_inflection_curve(inflection_curve)

    def _get_octavation_cursor(self):
        from plague_water import materials
        if self._octavations is None:
            sequence = sequencetools.remap_sequence_by_range_pairs(
                materials.euler_hundreds,
                [
                    ((0, 99), (0, 7)),
                    ],
                )
            octavations_server = datastructuretools.StatalServer(sequence)
            octavations_cursor = octavations_server()
            return octavations_cursor
        return self._octavations

    ### PUBLIC PROPERTIES ###

    @property
    def division_inflections(self):
        return self._division_inflections

    @property
    def octavations(self):
        return self._octavations

    @property
    def phrase_inflections(self):
        return self._phrase_inflections

    @property
    def global_inflection(self):
        return self._global_inflection
