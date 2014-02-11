# -*- encoding: utf-8 -*-
from abjad import *
from plague_water.makers.PlagueWaterObject import PlagueWaterObject


class MusicMaker(PlagueWaterObject):

    ### CLASS VARIABLES ###

    __slots__ = (
        '_apply_beam',
        '_chord_agent',
        '_dynamic_agent',
        '_grace_agent',
        '_indicator_agent',
        '_labels',
        '_pitch_agent',
        '_register_agent',
        '_rewrite_meter',
        '_rhythm_maker',
        '_spanner_agent',
        '_timespan_agent',
        )

    _default_rhythm_maker = rhythmmakertools.NoteRhythmMaker()

    ### INITIALIZER ###

    def __init__(
        self,
        apply_beam=None,
        chord_agent=None,
        dynamic_agent=None,
        grace_agent=None,
        indicator_agent=None,
        labels=None,
        pitch_agent=None,
        register_agent=None,
        rewrite_meter=None,
        rhythm_maker=None,
        spanner_agent=None,
        timespan_agent=None,
        ):
        from plague_water import makers
        assert isinstance(chord_agent, (makers.ChordAgent, type(None)))
        assert isinstance(dynamic_agent, (makers.DynamicAgent, type(None)))
        assert isinstance(grace_agent, (makers.GraceAgent, type(None)))
        assert isinstance(indicator_agent, (makers.IndicatorAgent, type(None)))
        assert isinstance(pitch_agent, (
            makers.PitchClassAgent,
            makers.PercussionPitchAgent,
            type(None),
            ))
        assert isinstance(register_agent, (makers.RegisterAgent, type(None)))
        assert isinstance(rhythm_maker, (
            rhythmmakertools.RhythmMaker,
            type(None),
            ))
        assert isinstance(spanner_agent, (makers.SpannerAgent, type(None)))
        assert isinstance(timespan_agent, (makers.TimespanAgent, type(None)))
        if apply_beam is not None:
            apply_beam = bool(apply_beam)
        self._apply_beam = apply_beam
        self._chord_agent = chord_agent
        self._dynamic_agent = dynamic_agent
        self._grace_agent = grace_agent
        self._indicator_agent = indicator_agent
        if isinstance(labels, str):
            labels = (labels,)
        if labels is not None:
            labels = tuple(labels)
        self._labels = labels
        self._pitch_agent = pitch_agent
        self._register_agent = register_agent
        if rewrite_meter is not None:
            rewrite_meter = bool(rewrite_meter)
        self._rewrite_meter = rewrite_meter
        self._rhythm_maker = rhythm_maker
        self._spanner_agent = spanner_agent
        self._timespan_agent = timespan_agent

    ### PUBLIC METHODS ###

    def create_rhythms(
        self,
        durations,
        change_staff_lines=False,
        initial_offset=None,
        meter_cache=None,
        meters=None,
        rewrite_meter=True,
        seed=0,
        ):
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
        assert inspect_(music).get_duration() == sum(durations)
        if (rewrite_meter and self.rewrite_meter is None) or \
            self.rewrite_meter:
            self._rewrite_meters(
                music,
                change_staff_lines=change_staff_lines,
                initial_offset=initial_offset,
                meter_cache=meter_cache,
                meters=meters,
                )
        if self.apply_beam or self.apply_beam is None:
            if self.rhythm_maker != rhythmmakertools.RestRhythmMaker():
                if self.rhythm_maker != rhythmmakertools.SkipRhythmMaker():
                    leaves = list(iterate(music).by_class(scoretools.Leaf))
                    if not all(isinstance(x, Rest) for x in leaves):
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
        dependencies=None,
        initial_offset=None,
        maximum_offset=None,
        ):
        result = self.timespan_agent(
            dependencies=dependencies,
            initial_offset=initial_offset,
            maximum_offset=maximum_offset,
            music_maker=self,
            )
        return result

    def timespan_has_minimum_length(self, timespan):
        return self.timespan_agent.timespan_has_minimum_length(timespan)

    def transform_cursors(self, cursor_transform):
        timespan_agent = self.timespan_agent.transform_cursors(
            cursor_transform)
        return new(
            self,
            timespan_agent=timespan_agent,
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
                        new_spanner = spannertools.StaffLinesSpanner(
                            lines=1,
                            )
                        attach(new_spanner, container.select_leaves())
                        previous_leaf = inspect_(multi_measure_rest
                            ).get_leaf(-1)
                        if isinstance(previous_leaf, type(multi_measure_rest)):
                            old_spanner = inspect_(previous_leaf).get_spanner(
                                type(new_spanner))
                            components = old_spanner[:] + [multi_measure_rest]
                            old_spanner._detach()
                            new_spanner._detach()
                            attach(old_spanner, components)
                else:
                    mutate(container[:]).rewrite_meter(
                        current_meter,
                        boundary_depth=1,
                        initial_offset=container_start_offset,
                        maximum_dot_count=2,
                        )

    ### PUBLIC PROPERTIES ###

    @property
    def apply_beam(self):
        return self._apply_beam

    @property
    def chord_agent(self):
        return self._chord_agent

    @property
    def dynamic_agent(self):
        return self._dynamic_agent

    @property
    def grace_agent(self):
        return self._grace_agent

    @property
    def indicator_agent(self):
        return self._indicator_agent

    @property
    def labels(self):
        return self._labels

    @property
    def pitch_agent(self):
        return self._pitch_agent

    @property
    def register_agent(self):
        return self._register_agent

    @property
    def rewrite_meter(self):
        return self._rewrite_meter

    @property
    def rhythm_maker(self):
        return self._rhythm_maker

    @property
    def spanner_agent(self):
        return self._spanner_agent

    @property
    def timespan_agent(self):
        return self._timespan_agent
