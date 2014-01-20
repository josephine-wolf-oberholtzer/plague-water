# -*- encoding: utf-8 -*-
from abjad import *
from plague_water.makers.ContextAwareMaker import ContextAwareMaker


class MusicMaker(ContextAwareMaker):

    ### CLASS VARIABLES ###

    __slots__ = (
        '_articulation_maker',
        '_chord_maker',
        '_dynamic_maker',
        '_minimum_timespan_duration',
        '_pitch_class_maker',
        '_registration_maker',
        '_rhythm_maker',
        '_spanner_maker',
        )

    _default_rhythm_maker = rhythmmakertools.NoteRhythmMaker()

    ### INITIALIZER ###

    def __init__(
        self,
        articulation_maker=None,
        chord_maker=None,
        dynamic_maker=None,
        minimum_timespan_duration=None,
        pitch_class_maker=None,
        registration_maker=None,
        rhythm_maker=None,
        spanner_maker=None,
        ):
        from plague_water import makers
        # prototype
        assert isinstance(articulation_maker,
            (makers.ArticulationMaker, type(None)))
        assert isinstance(chord_maker,
            (makers.ChordMaker, type(None)))
        assert isinstance(dynamic_maker,
            (makers.DynamicMaker, type(None)))
        assert isinstance(minimum_timespan_duration, (Duration, type(None)))
        assert isinstance(pitch_class_maker,
            (makers.PitchClassMaker, type(None)))
        assert isinstance(registration_maker,
            (makers.RegistrationMaker, type(None)))
        assert isinstance(rhythm_maker,
            (rhythmmakertools.RhythmMaker, type(None)))
        assert isinstance(spanner_maker,
            (makers.SpannerMaker, type(None)))
        self._articulation_maker = articulation_maker
        self._chord_maker = chord_maker
        self._dynamic_maker = dynamic_maker
        self._minimum_timespan_duration = minimum_timespan_duration
        self._pitch_class_maker = pitch_class_maker
        self._registration_maker = registration_maker
        self._rhythm_maker = rhythm_maker
        self._spanner_maker = spanner_maker

    ### PUBLIC METHODS ###

    def apply_articulations(
        self,
        music=None,
        seed=0,
        segment_actual_duration=None,
        ):
        if self.articulation_maker is not None:
            self.articulation_maker(
                music,
                seed=seed,
                segment_actual_duration=segment_actual_duration,
                )
        assert inspect_(music).is_well_formed()

    def apply_chords(
        self,
        music=None,
        seed=0,
        segment_actual_duration=None,
        ):
        if self.chord_maker is not None:
            self.chord_maker(
                music,
                seed=seed,
                segment_actual_duration=segment_actual_duration,
                )
        assert inspect_(music).is_well_formed()

    def apply_dynamics(
        self,
        music=None,
        seed=0,
        segment_actual_duration=None,
        ):
        if self.dynamic_maker is not None:
            self.dynamic_maker(
                music,
                seed=seed,
                segment_actual_duration=segment_actual_duration,
                )
        assert inspect_(music).is_well_formed()

    def apply_pitch_classes(
        self,
        music=None,
        seed=0,
        segment_actual_duration=None,
        ):
        pass

    def apply_registrations(
        self,
        music=None,
        seed=0,
        segment_actual_duration=None,
        ):
        if self.registration_maker is not None:
            self.registration_maker(
                music,
                seed=seed,
                segment_actual_duration=segment_actual_duration,
                )
        assert inspect_(music).is_well_formed()

    def apply_spanners(
        self,
        music=None,
        seed=0,
        segment_actual_duration=None,
        ):
        if self.spanner_maker is not None:
            self.spanner_maker(
                music,
                seed=seed,
                segment_actual_duration=segment_actual_duration,
                )
        assert inspect_(music).is_well_formed()

    def create_rhythms(
        self,
        durations,
        beam_music=True,
        initial_offset=None,
        meter_cache=None,
        meters=None,
        rewrite_meter=True,
        seed=0,
        ):
        beam_music = bool(beam_music)
        durations = [Duration(x) for x in durations]
        assert len(durations)
        rhythm_maker = self.rhythm_maker or self._default_rhythm_maker
        assert isinstance(rhythm_maker, rhythmmakertools.RhythmMaker)
        seed = int(seed)
        music = rhythm_maker(durations, seeds=seed)
        for i, x in enumerate(music):
            if isinstance(x, Tuplet) and x.is_trivial:
                music[i] = Container()
                music[i].extend(x)
            elif isinstance(x, selectiontools.Selection):
                music[i] = Container(x)
        music = Container(music)
        if rewrite_meter:
            self._rewrite_meters(
                music,
                initial_offset=initial_offset,
                meter_cache=meter_cache,
                meters=meters,
                )
        if beam_music and \
            self.rhythm_maker != rhythmmakertools.RestRhythmMaker():
            beam = spannertools.GeneralizedBeam(
                include_long_duration_notes=False,
                include_long_duration_rests=False,
                isolated_nib_direction=None,
                use_stemlets=True,
                )
            attach(beam, music)
        assert inspect_(music).is_well_formed()
        return music

    def timespan_has_minimum_length(self, timespan):
        assert isinstance(timespan, timespantools.Timespan)
        if self.minimum_timespan_duration is None:
            return True
        elif self.minimum_timespan_duration <= timespan.duration:
            return True
        return False

    ### PRIVATE PROPERTIES ###

    def _iterate_music_and_meters(
        self,
        initial_offset=None,
        meters=None,
        music=None,
        ):
        assert isinstance(initial_offset, Offset) and 0 <= initial_offset
        assert all(isinstance(x, metertools.Meter) for x in meters)
        assert len(meters)
        current_meters = list(meters)
        current_meter_offsets = list(mathtools.cumulative_sums(
            x.implied_time_signature.duration for x in meters))
        for container in music[:]:
            container_start_offset = \
                inspect_(container).get_timespan().start_offset + initial_offset
            while 2 < len(current_meter_offsets) and \
                current_meter_offsets[1] <= container_start_offset:
                current_meter_offsets.pop(0)
                current_meters.pop(0)
            current_meter = current_meters[0]
            current_meter_offset = current_meter_offsets[0]
            current_initial_offset = \
                container_start_offset - current_meter_offset
            yield container, current_meter, current_initial_offset

    def _rewrite_meters(
        self,
        music,
        initial_offset=None,
        meter_cache=None,
        meters=None,
        ):
        if meter_cache is not None:
            assert isinstance(meter_cache, dict)
        iterator = self._iterate_music_and_meters(
            initial_offset=initial_offset,
            meters=meters,
            music=music,
            )
        for container, current_meter, current_initial_offset in iterator:
            if isinstance(container, scoretools.Tuplet):
                contents_duration = container._contents_duration
                if meter_cache is not None:
                    if contents_duration not in meter_cache:
                        meter = metertools.Meter(contents_duration)
                        meter_cache[contents_duration] = meter
                    meter = meter_cache[contents_duration]
                else:
                    meter = metertools.Meter(contents_duration)
                mutate(container[:]).rewrite_meter(
                    meter,
                    boundary_depth=1,
                    maximum_dot_count=2,
                    )
            else:
                current_meter_duration = \
                    current_meter.implied_time_signature.duration
                if inspect_(container).get_duration() == \
                    current_meter_duration and \
                    current_initial_offset == 0 and \
                    all(isinstance(x, Rest) for x in container):
                    multi_measure_rest = scoretools.MultimeasureRest(1)
                    multiplier = Multiplier(current_meter_duration)
                    attach(multiplier, multi_measure_rest)
                    container[:] = [multi_measure_rest]
                else:
                    mutate(container[:]).rewrite_meter(
                        current_meter,
                        boundary_depth=1,
                        initial_offset=current_initial_offset,
                        maximum_dot_count=2,
                        )

    ### PUBLIC PROPERTIES ###

    @property
    def articulation_maker(self):
        return self._articulation_maker

    @property
    def chord_maker(self):
        return self._chord_maker

    @property
    def dynamic_maker(self):
        return self._dynamic_maker

    @property
    def minimum_timespan_duration(self):
        return self._minimum_timespan_duration

    @property
    def pitch_class_maker(self):
        return self._pitch_class_maker

    @property
    def registration_maker(self):
        return self._registration_maker

    @property
    def rhythm_maker(self):
        return self._rhythm_maker

    @property
    def spanner_maker(self):
        return self._spanner_maker
