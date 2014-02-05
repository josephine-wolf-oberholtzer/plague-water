# -*- encoding: utf-8 -*-
from abjad import new
from abjad.tools import datastructuretools
from abjad.tools import durationtools
from abjad.tools import mathtools
from abjad.tools import systemtools
from abjad.tools import rhythmmakertools
from abjad.tools import timespantools
from plague_water.makers.PlagueWaterObject import PlagueWaterObject


class TimespanMaker(PlagueWaterObject):

    ### CLASS VARIABLES ###

    __slots__ = (
        '_context_name',
        '_context_dependencies',
        '_initial_music_maker',
        '_music_maker_indices',
        '_music_makers',
        '_timespan_inventory',
        )

    ### INITIALIZER ###

    def __init__(
        self,
        context_name=None,
        context_dependencies=None,
        initial_music_maker=None,
        music_maker_indices=None,
        music_makers=None,
        ):
        from plague_water import makers
        assert context_name
        context_name = str(context_name)
        self._context_name = context_name
        if context_dependencies is not None:
            context_dependencies = tuple(str(x) for x in context_dependencies)
        self._context_dependencies = context_dependencies
        assert isinstance(initial_music_maker, (makers.MusicMaker, type(None)))
        self._initial_music_maker = initial_music_maker
        if music_maker_indices is not None:
            music_maker_indices = tuple(int(x) for x in music_maker_indices)
        self._music_maker_indices = music_maker_indices
        if music_makers is not None:
            assert initial_music_maker or len(music_makers)
            assert all(isinstance(x, makers.MusicMaker)
                for x in music_makers)
            music_makers = tuple(music_makers)
        self._music_makers = music_makers
        self._timespan_inventory = timespantools.TimespanInventory()

    ### PUBLIC METHODS ###

    def cleanup_performed_timespans(
        self,
        split_offsets=None,
        ):
        if not split_offsets:
            return
        new_timespan_inventory = timespantools.TimespanInventory()
        for shard in self.timespan_inventory.split_at_offsets(split_offsets):
            for timespan in shard:
                music_maker = timespan.annotation
                if music_maker.timespan_has_minimum_length(timespan):
                    new_timespan_inventory.append(timespan)
        self.timespan_inventory[:] = new_timespan_inventory
        self.timespan_inventory.sort()

    def create_performed_timespans(
        self,
        target_segment_duration,
        context_map=None,
        dependencies=None,
        ):
        current_offset = durationtools.Offset(0)
        timespan_inventory = timespantools.TimespanInventory()
        message = '\t\t{}'.format(self.context_name)
        with systemtools.ProgressIndicator(message) as progress_indicator:
            if self.initial_music_maker is not None:
                music_maker = self.initial_music_maker.from_context_map(
                    context_map=context_map,
                    context_name=self.context_name,
                    )
                music_maker_timespan_inventory, current_offset = \
                    music_maker.create_timespans(
                        current_offset,
                        target_segment_duration,
                        )
                timespan_inventory.extend(music_maker_timespan_inventory)
                progress_indicator.advance()
            if self.music_makers:
                music_makers = datastructuretools.CyclicTuple(
                    self.music_makers)
                if not self.music_maker_indices:
                    music_maker_indices = datastructuretools.CyclicTuple(
                        range(len(self.music_makers)))
                else:
                    music_maker_indices = datastructuretools.CyclicTuple(
                        self.music_maker_indices)
                counter = 0
                while current_offset < target_segment_duration:
                    music_maker_index = music_maker_indices[counter]
                    music_maker = music_makers[music_maker_index]
                    music_maker = music_maker.from_context_map(
                        context_map=context_map,
                        context_name=self.context_name,
                        )
                    music_maker_timespan_inventory, current_offset = \
                        music_maker.create_timespans(
                            current_offset,
                            target_segment_duration,
                            )
                    timespan_inventory.extend(music_maker_timespan_inventory)
                    counter += 1
                    progress_indicator.advance()
        self.timespan_inventory[:] = timespan_inventory

    def create_silent_timespans(
        self,
        segment_duration=None,
        time_signatures=None,
        ):
        from plague_water import makers
        offsets = mathtools.cumulative_sums(
            x.duration for x in time_signatures)
        silence_timespan_inventory = timespantools.TimespanInventory()
        previous_stop_offset = durationtools.Offset(0)
        for timespan in self.timespan_inventory:
            current_start_offset = timespan.start_offset
            if previous_stop_offset < current_start_offset:
                silence_timespan = timespantools.Timespan(
                    start_offset=previous_stop_offset,
                    stop_offset=current_start_offset,
                    )
                silence_timespan_inventory.append(silence_timespan)
            previous_stop_offset = timespan.stop_offset
        if previous_stop_offset < segment_duration:
            silence_timespan = timespantools.Timespan(
                start_offset=previous_stop_offset,
                stop_offset=segment_duration,
                )
            silence_timespan_inventory.append(silence_timespan)
        fused_silence_timespans = timespantools.TimespanInventory()
        for group in silence_timespan_inventory.partition(
            include_tangent_timespans=True,
            ):
            fused_silence_timespan = timespantools.AnnotatedTimespan(
                annotation=makers.MusicMaker(
                    rhythm_maker=rhythmmakertools.RestRhythmMaker(),
                    ),
                start_offset=group.start_offset,
                stop_offset=group.stop_offset,
                )
            fused_silence_timespans.append(fused_silence_timespan)
        for shard in fused_silence_timespans.split_at_offsets(offsets):
            self.timespan_inventory.extend(shard)
        self.timespan_inventory.sort()

    @staticmethod
    def order_by_dependencies(timespan_makers):
        timespan_makers = list(timespan_makers)
        result = []
        context_names = set()
        while timespan_makers:
            made_progress = False
            for timespan_maker in reversed(timespan_makers):
                if timespan_maker.context_dependencies is None or \
                    all(x in context_names
                        for x in timespan_maker.context_dependencies):
                    timespan_makers.remove(timespan_maker)
                    result.append(timespan_maker)
                    context_names.add(timespan_maker.context_name)
                    made_progress = True
            assert made_progress
        return result

    def transform_cursors(self, cursor_transform):
        from plague_water import makers
        prototype = (makers.CursorTransform, type(None))
        assert isinstance(cursor_transform, prototype)
        initial_music_maker = self.initial_music_maker
        if initial_music_maker is not None:
            initial_music_maker = initial_music_maker.transform_cursors(
                cursor_transform)
        music_makers = self.music_makers
        if music_makers is not None:
            music_makers = [
                music_maker.transform_cursors(cursor_transform)
                for music_maker in music_makers
                ]
        return new(self,
            initial_music_maker=initial_music_maker,
            music_makers=music_makers,
            )

    ### PUBLIC PROPERTIES ###

    @property
    def context_name(self):
        return self._context_name

    @property
    def context_dependencies(self):
        return self._context_dependencies

    @property
    def initial_music_maker(self):
        return self._initial_music_maker

    @property
    def music_maker_indices(self):
        return self._music_maker_indices

    @property
    def music_makers(self):
        return self._music_makers

    @property
    def timespan_inventory(self):
        return self._timespan_inventory
