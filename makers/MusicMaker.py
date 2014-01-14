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
        beam_music=True,
        initial_offset=None,
        meter_cache=None,
        meters=None,
        seed=0,
        ):
        beam_music = bool(beam_music)
        durations = [Duration(x) for x in durations]
        assert len(durations)
        assert isinstance(self.rhythm_maker, rhythmmakertools.RhythmMaker)
        seed = int(seed)
        music = self.rhythm_maker(durations, seeds=seed)
        for i, x in enumerate(music):
            if isinstance(x, Tuplet) and x.is_trivial:
                music[i] = Container()
                music[i].extend(x)
            elif isinstance(x, selectiontools.Selection):
                music[i] = Container(x)
        music = Container(music)
        self._rewrite_meters(
            music,
            initial_offset=initial_offset,
            meter_cache=meter_cache,
            meters=meters,
            )
        if self.pitch_maker is not None:
            self.pitch_maker(music, seed)
        if self.dynamics_maker is not None:
            self.dynamics_maker(music, seed)
        if self.articulation_maker is not None:
            self.articulation_maker(music, seed)
        if beam_music:
            beam = spannertools.GeneralizedBeam(
                include_long_duration_notes=False,
                include_long_duration_rests=False,
                isolated_nib_direction=None,
                use_stemlets=True,
                )
            attach(beam, music)
        return music

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
                inspect(container).get_timespan().start_offset + initial_offset
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
                if inspect(container).get_duration() == \
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
    def dynamics_maker(self):
        return self._dynamics_maker

    @property
    def pitch_maker(self):
        return self._pitch_maker

    @property
    def rhythm_maker(self):
        return self._rhythm_maker
