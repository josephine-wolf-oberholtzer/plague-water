# -*- encoding: utf-8 -*-
from abjad import *
from plague_water.makers.PlagueWaterObject import PlagueWaterObject


class MusicMaker(PlagueWaterObject):

    ### CLASS VARIABLES ###

    __slots__ = (
        '_articulation_maker',
        '_can_be_split',
        '_chord_maker',
        '_dynamic_maker',
        '_leading_rest_durations',
        '_minimum_timespan_duration',
        '_pitch_class_maker',
        '_playing_durations',
        '_playing_groupings',
        '_registration_maker',
        '_rewrite_meter',
        '_rhythm_maker',
        '_spanner_maker',
        '_tailing_rest_durations',
        )

    _default_rhythm_maker = rhythmmakertools.NoteRhythmMaker()

    ### INITIALIZER ###

    def __init__(
        self,
        indicator_handler=None,
        can_be_split=None,
        chord_handler=None,
        dynamic_handler=None,
        leading_rest_durations=None,
        minimum_timespan_duration=None,
        pitch_class_maker=None,
        playing_durations=None,
        playing_groupings=None,
        registration_handler=None,
        rewrite_meter=None,
        rhythm_maker=None,
        spanner_handler=None,
        tailing_rest_durations=None,
        ):
        from plague_water import makers
        assert isinstance(indicator_handler,
            (makers.IndicatorHandler, type(None)))
        assert isinstance(chord_handler,
            (makers.ChordHandler, type(None)))
        assert isinstance(dynamic_handler,
            (makers.DynamicHandler, type(None)))
        assert isinstance(minimum_timespan_duration, (Duration, type(None)))
        assert isinstance(pitch_class_maker,
            (makers.PitchClassMaker, type(None)))
        assert isinstance(registration_handler,
            (makers.RegistrationHandler, type(None)))
        assert isinstance(rhythm_maker,
            (rhythmmakertools.RhythmMaker, type(None)))
        assert isinstance(spanner_handler,
            (makers.SpannerHandler, type(None)))
        self._articulation_maker = indicator_handler
        if can_be_split is not None:
            can_be_split = bool(can_be_split)
        self._can_be_split = can_be_split
        self._chord_maker = chord_handler
        self._dynamic_maker = dynamic_handler
        self._leading_rest_durations = self._setup_duration_cursor(
            leading_rest_durations)
        self._minimum_timespan_duration = minimum_timespan_duration
        self._pitch_class_maker = pitch_class_maker
        self._playing_durations = self._setup_duration_cursor(
            playing_durations)
        self._playing_groupings = self._setup_grouping_cursor(
            playing_groupings)
        self._registration_maker = registration_handler
        if rewrite_meter is not None:
            rewrite_meter = bool(rewrite_meter)
        self._rewrite_meter = rewrite_meter
        self._rhythm_maker = rhythm_maker
        self._spanner_maker = spanner_handler
        self._tailing_rest_durations = self._setup_duration_cursor(
            tailing_rest_durations)

    ### PUBLIC METHODS ###

    def apply_articulations(
        self,
        music=None,
        seed=0,
        segment_duration=None,
        ):
        if self.indicator_handler is None:
            return
        self.indicator_handler(
            music,
            seed=seed,
            segment_duration=segment_duration,
            )
        assert inspect_(music).is_well_formed()

    def apply_chords(
        self,
        logical_tie=None,
        segment_duration=None,
        ):
        if self.chord_handler is None:
            return
        self.chord_handler(
            logical_tie,
            segment_duration=segment_duration,
            )

    def apply_dynamics(
        self,
        music=None,
        seed=0,
        segment_duration=None,
        ):
        if self.dynamic_handler is None:
            return
        self.dynamic_handler(
            music,
            seed=seed,
            segment_duration=segment_duration,
            )
        assert inspect_(music).is_well_formed()

    def apply_pitch_classes(
        self,
        logical_tie=None,
        segment_duration=None,
        ):
        if self.pitch_class_maker is None:
            return
        self.pitch_class_maker(
            logical_tie,
            segment_duration=segment_duration,
            )

    def apply_registrations(
        self,
        music=None,
        seed=0,
        segment_duration=None,
        ):
        if self.registration_handler is None:
            return
        self.registration_handler(
            music,
            segment_duration=segment_duration,
            )
        assert inspect_(music).is_well_formed()

    def apply_spanners(
        self,
        music=None,
        seed=0,
        segment_duration=None,
        ):
        if self.spanner_handler is None:
            return
        self.spanner_handler(
            music,
            seed=seed,
            segment_duration=segment_duration,
            )
        assert inspect_(music).is_well_formed()

    def create_rhythms(
        self,
        durations,
        beam_music=True,
        change_staff_lines=False,
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
            if isinstance(x, selectiontools.Selection):
                music[i] = Container(x)
        music = Container(music)
        if rewrite_meter and self.rewrite_meter is None or self.rewrite_meter:
            self._rewrite_meters(
                music,
                change_staff_lines=change_staff_lines,
                initial_offset=initial_offset,
                meter_cache=meter_cache,
                meters=meters,
                )
        if beam_music and \
            self.rhythm_maker != rhythmmakertools.RestRhythmMaker():
            beam = spannertools.GeneralizedBeam(
                durations=durations,
                include_long_duration_notes=True,
                include_long_duration_rests=True,
                isolated_nib_direction=None,
                use_stemlets=True,
                )
            attach(beam, music)
        return music

    def create_timespans(
        self,
        initial_offset,
        maximum_offset,
        ):
        assert isinstance(self.leading_rest_durations,
            (datastructuretools.StatalServerCursor, type(None))),\
            self.leading_rest_durations
        assert isinstance(self.playing_durations,
            datastructuretools.StatalServerCursor),\
            self.playing_durations
        assert isinstance(self.playing_groupings,
            datastructuretools.StatalServerCursor),\
            self.playing_groupings
        assert isinstance(self.tailing_rest_durations,
            (datastructuretools.StatalServerCursor, type(None))),\
            self.tailing_rest_durations
        assert isinstance(initial_offset, Duration), initial_offset
        assert isinstance(maximum_offset, Duration), maximum_offset
        timespan_inventory = timespantools.TimespanInventory()
        leading_rest_duration = Duration(0)
        if self.leading_rest_durations is not None:
            leading_rest_duration = self.leading_rest_durations()[0]
        playing_grouping = self.playing_groupings()[0]
        assert isinstance(playing_grouping, int), playing_grouping
        playing_durations = self.playing_durations(playing_grouping)
        tailing_rest_duration = Duration(0)
        if self.tailing_rest_durations is not None:
            tailing_rest_duration = self.tailing_rest_durations()[0]
        start_offset = initial_offset + leading_rest_duration
        if maximum_offset <= start_offset:
            return timespan_inventory, maximum_offset
        for playing_duration in playing_durations:
            stop_offset = start_offset + playing_duration
            if maximum_offset <= stop_offset:
                return timespan_inventory, maximum_offset
            timespan = timespantools.AnnotatedTimespan(
                annotation=self,
                start_offset=start_offset,
                stop_offset=stop_offset,
                )
            timespan_inventory.append(timespan)
            start_offset = stop_offset
        stop_offset = timespan_inventory.stop_offset + tailing_rest_duration
        if maximum_offset < stop_offset:
            stop_offset = maximum_offset
        return timespan_inventory, stop_offset

    def timespan_has_minimum_length(self, timespan):
        assert isinstance(timespan, timespantools.Timespan)
        if self.minimum_timespan_duration is None:
            return True
        elif self.minimum_timespan_duration <= timespan.duration:
            return True
        return False

    def transform_cursors(self, cursor_transform):
        from plague_water import makers
        if cursor_transform is None:
            return new(self)
        assert isinstance(cursor_transform, makers.CursorTransform)
        leading_rest_durations = cursor_transform(self.leading_rest_durations)
        playing_durations = cursor_transform(self.playing_durations)
        playing_groupings = cursor_transform(self.playing_groupings)
        tailing_rest_durations = cursor_transform(self.tailing_rest_durations)
        return new(
            self,
            leading_rest_durations=leading_rest_durations,
            playing_durations=playing_durations,
            playing_groupings=playing_groupings,
            tailing_rest_durations=tailing_rest_durations,
            )

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
        change_staff_lines=False,
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
        for container, current_meter, container_start_offset in iterator:
            current_meter_duration = \
                current_meter.implied_time_signature.duration
            container_stop_offset = inspect_(container).get_duration() + \
                container_start_offset
            # if container is a tuplet, or crosses a meter boundary:
            if isinstance(container, scoretools.Tuplet) or \
                current_meter_duration < container_stop_offset:
                contents_duration = container._contents_duration
                if contents_duration not in meter_cache:
                    meter = metertools.Meter(contents_duration)
                    meter_cache[contents_duration] = meter
                meter = meter_cache[contents_duration]
                mutate(container[:]).rewrite_meter(
                    meter,
                    boundary_depth=1,
                    maximum_dot_count=2,
                    )
            else:
                if inspect_(container).get_duration() == \
                    current_meter_duration and \
                    container_start_offset == 0 and \
                    all(isinstance(x, Rest) for x in container):
                    multi_measure_rest = scoretools.MultimeasureRest(1)
                    multiplier = Multiplier(current_meter_duration)
                    attach(multiplier, multi_measure_rest)
                    container[:] = [multi_measure_rest]
                    if change_staff_lines:
                        staff_lines_spanner = spannertools.StaffLinesSpanner(
                            lines=1,
                            )
                        attach(staff_lines_spanner, container)
                else:
                    mutate(container[:]).rewrite_meter(
                        current_meter,
                        boundary_depth=1,
                        initial_offset=container_start_offset,
                        maximum_dot_count=2,
                        )

    def _setup_duration_cursor(self, expr):
        if expr is not None:
            if isinstance(expr, Duration):
                expr = [expr]
            if isinstance(expr, (list, tuple)):
                expr = datastructuretools.StatalServer(expr)
            if isinstance(expr, datastructuretools.StatalServer):
                expr = expr()
            assert isinstance(expr, datastructuretools.StatalServerCursor)
        return expr

    def _setup_grouping_cursor(self, expr):
        if expr is not None:
            if isinstance(expr, int):
                expr = [expr]
            if isinstance(expr, (list, tuple)):
                expr = datastructuretools.StatalServer(expr)
            if isinstance(expr, datastructuretools.StatalServer):
                expr = expr()
            assert isinstance(expr, datastructuretools.StatalServerCursor)
        return expr

    ### PUBLIC PROPERTIES ###

    @property
    def indicator_handler(self):
        return self._articulation_maker

    @property
    def can_be_split(self):
        return self._can_be_split

    @property
    def chord_handler(self):
        return self._chord_maker

    @property
    def dynamic_handler(self):
        return self._dynamic_maker

    @property
    def leading_rest_durations(self):
        return self._leading_rest_durations

    @property
    def minimum_timespan_duration(self):
        return self._minimum_timespan_duration

    @property
    def pitch_class_maker(self):
        return self._pitch_class_maker

    @property
    def playing_durations(self):
        return self._playing_durations

    @property
    def playing_groupings(self):
        return self._playing_groupings

    @property
    def registration_handler(self):
        return self._registration_maker

    @property
    def rewrite_meter(self):
        return self._rewrite_meter

    @property
    def rhythm_maker(self):
        return self._rhythm_maker

    @property
    def spanner_handler(self):
        return self._spanner_maker

    @property
    def tailing_rest_durations(self):
        return self._tailing_rest_durations
