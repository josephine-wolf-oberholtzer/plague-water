# -*- encoding: utf-8 -*-
import collections
from abjad import *
from plague_water.makers.PlagueWaterObject import PlagueWaterObject


class RegisterAgent(PlagueWaterObject):

    ### CLASS VARIABLES ###

    __slots__ = (
        '_division_inflections',
        '_global_inflections',
        '_octavations',
        '_phrase_inflections',
        )

    ### INITIALIZER ###

    def __init__(
        self,
        division_inflections=None,
        global_inflections=None,
        octavations=None,
        phrase_inflections=None,
        ):
        from plague_water import makers
        if global_inflections is not None:
            result = []
            if not isinstance(global_inflections, collections.Sequence):
                global_inflections = (global_inflections,)
            for x in global_inflections:
                if not isinstance(x, makers.RegisterCurve):
                    x = pitchtools.NamedPitch(x)
                result.append(x)
            global_inflections = self._expr_to_statal_server_cursor(result)
        if phrase_inflections is not None:
            result = []
            if not isinstance(phrase_inflections, collections.Sequence):
                phrase_inflections = (phrase_inflections,)
            for x in phrase_inflections:
                if not isinstance(x, makers.RegisterCurve):
                    x = pitchtools.NamedPitch(x)
                result.append(x)
            phrase_inflections = self._expr_to_statal_server_cursor(result)
        if division_inflections is not None:
            result = []
            if not isinstance(division_inflections, collections.Sequence):
                division_inflections = (division_inflections,)
            for x in division_inflections:
                if not isinstance(x, makers.RegisterCurve):
                    x = pitchtools.NamedPitch(x)
                result.append(x)
            division_inflections = self._expr_to_statal_server_cursor(result)
        self._global_inflections = global_inflections
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
        global_inflection_curve = self._get_inflection_curve_from_cursor(
            self.global_inflections)
        phrase_inflection_curve = self._get_inflection_curve_from_cursor(
            self.phrase_inflections)
        iterator = iterate(music).by_logical_tie(pitched=True)
        all_logical_ties = [x for x in iterator]
        if not all_logical_ties:
            return
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
                if music_duration:
                    phrase_position = (
                        (tie_start_offset - music_start_offset) /
                        music_duration
                        )
                # otherwise there is only one tie chain, so no difference
                else:
                    phrase_position = Offset(0)
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
                    float(division_inflection_interval.semitones) +
                    float(phrase_inflection_interval.semitones) +
                    float(global_inflection_interval.semitones)
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
        pitch_range = inspect_(logical_tie.head).get_effective(
            pitchtools.PitchRange)
        assert pitch_range is not None
        assert inflection_pitch in pitch_range, (
            'LO',
            inflection_pitch.pitch_class_octave_label,
            pitch_range,
            self.global_inflections,
            )
        assert inflection_pitch + 17 in pitch_range, (
            'HI',
            (inflection_pitch + 17).pitch_class_octave_label,
            pitch_range,
            self.global_inflections,
            )
        octave_transposition_mapping = \
            pitchtools.Registration([
                ('[C0, C4)', inflection_pitch),
                ('[C4, C8)', inflection_pitch + 6),
                ])
        logical_ties = []
        previous_leaf = inspect_(logical_tie.head).get_leaf(-1)
        if previous_leaf is not None:
            kind = 'after'
            graces = inspect_(previous_leaf).get_grace_containers(kind)
            if graces:
                iterator = iterate(graces[0]).by_logical_tie(pitched=True)
                logical_ties.extend([x for x in iterator])
        kind = 'grace'
        graces = inspect_(logical_tie.head).get_grace_containers(kind)
        if graces:
            iterator = iterate(graces[0]).by_logical_tie(pitched=True)
            logical_ties.extend([x for x in iterator])
        logical_ties.append(logical_tie)
        for logical_tie in logical_ties:
            original_pitch = logical_tie[0].written_pitch
            octavated_pitch = NamedPitch(
                original_pitch.named_pitch_class,
                octavation,
                )
            registrated_pitch = octave_transposition_mapping([octavated_pitch])
            for note in logical_tie:
                note.written_pitch = registrated_pitch

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
        from plague_water import makers
        from plague_water import materials
        if self._octavations is None:
            sequence = makers.SegmentMaker.remap_sequence(
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
    def global_inflections(self):
        return self._global_inflections

    @property
    def phrase_inflections(self):
        return self._phrase_inflections

    @property
    def octavations(self):
        return self._octavations
