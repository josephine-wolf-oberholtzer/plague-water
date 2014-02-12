# -*- encoding: utf-8 -*-
from abjad import *
from plague_water.makers.PlagueWaterObject import PlagueWaterObject


class PitchClassAgent(PlagueWaterObject):

    ### CLASS VARIABLES ###

    __slots__ = (
        '_current_cursor',
        '_last_pitch_class',
        '_last_pitch_class_sequence_index',
        '_last_transform_index',
        '_pitch_class_ratio',
        '_pitch_class_talea',
        '_transform_ratio',
        '_transform_talea',
        )

    ### INITIALIZER ###

    def __init__(
        self,
        pitch_class_ratio=None,
        pitch_class_talea=None,
        transform_ratio=None,
        transform_talea=None,
        ):
        from plague_water import makers
        pitch_class_ratio = mathtools.Ratio([
            abs(x) for x in pitch_class_ratio
            ])
        assert len(pitch_class_ratio)
        if transform_ratio is not None:
            transform_ratio = mathtools.Ratio([
                abs(x) for x in transform_ratio
                ])
            assert len(transform_ratio)
        self._pitch_class_ratio = pitch_class_ratio
        self._transform_ratio = transform_ratio
        self._pitch_class_talea = datastructuretools.CyclicTuple([
            datastructuretools.CyclicTuple(
                pitchtools.PitchClassSegment(
                    sequence,
                    item_class=pitchtools.NumberedPitchClass,
                    )
                )
            for sequence in pitch_class_talea
            ])
        if transform_talea is not None:
            transform_prototype = (
                makers.PitchClassSegmentTransform,
                type(None),
                )
            assert all(isinstance(x, transform_prototype)
                for x in transform_talea)
            transform_talea = self._expr_to_cyclic_tuple(transform_talea)
        self._transform_talea = transform_talea
        self._current_cursor = self._expr_to_statal_server_cursor(
            self._pitch_class_talea[0])
        self._last_pitch_class = None
        self._last_pitch_class_sequence_index = None
        self._last_transform_index = None

    ### SPECIAL METHODS ###

    def __call__(
        self,
        logical_tie,
        previous_pitch_set=None,
        segment_duration=None,
        ):
        assert isinstance(logical_tie, selectiontools.LogicalTie)
        assert logical_tie
        assert segment_duration
        start_offset = logical_tie.get_timespan().start_offset
        pitch_class_offsets = self._duration_and_ratio_to_offsets(
            duration=segment_duration,
            ratio=self.pitch_class_ratio,
            )
        pitch_class_sequence_index = self._offset_and_offsets_to_index(
            offset=start_offset,
            offsets=pitch_class_offsets,
            )
        if pitch_class_sequence_index != self._last_pitch_class_sequence_index:
            self._last_pitch_class_sequence_index = pitch_class_sequence_index
            pitch_class_sequence = \
                self.pitch_class_talea[pitch_class_sequence_index]
            self._current_cursor = self._expr_to_statal_server_cursor(
                pitch_class_sequence)
        if self.transform_talea is not None:
            transform_offsets = self._duration_and_ratio_to_offsets(
                duration=segment_duration,
                ratio=self.transform_ratio,
                )
            transform_index = self._offset_and_offsets_to_index(
                offset=start_offset,
                offsets=transform_offsets,
                )
            if transform_index != self._last_transform_index:
                self._last_transform_index = transform_index
                transform = self.transform_talea[transform_index]
                pitch_class_sequence = self.pitch_class_talea[
                    self._last_pitch_class_sequence_index]
                if transform is not None:
                    pitch_class_sequence = transform(pitch_class_sequence)
                previous_position = self._current_cursor.position
                self._current_cursor = self._expr_to_statal_server_cursor(
                    pitch_class_sequence)
                self._current_cursor = datastructuretools.StatalServerCursor(
                    position=previous_position,
                    statal_server=self._current_cursor.statal_server,
                    )
        current_pitch_class = self._current_cursor(1)[0]
        if previous_pitch_set is not None:
            previous_pitch_class = pitchtools.NumberedPitchClass(
                list(previous_pitch_set)[0])
        else:
            previous_pitch_class = None
        if 1 < len(set(self.pitch_class_talea[pitch_class_sequence_index])):
            while current_pitch_class == previous_pitch_class:
                current_pitch_class = self._current_cursor()[0]
        for note in logical_tie:
            note.written_pitch = current_pitch_class
        pitch = pitchtools.NamedPitch(current_pitch_class)
        pitches = pitchtools.PitchSet([pitch])
        return pitches

    ### PUBLIC METHODS ###

    def rotate(self, n=1):
        n = int(n)
        pitch_class_ratio = sequencetools.rotate_sequence(
            self.pitch_class_ratio, n)
        pitch_class_talea = sequencetools.rotate_sequence(
            self.pitch_class_talea, n)
        pitch_class_talea = tuple(
            sequencetools.rotate_sequence(x, n)
            for x in pitch_class_talea
            )
        transform_ratio = self.transform_ratio
        if transform_ratio is not None:
            transform_ratio = sequencetools.rotate_sequence(transform_ratio, n)
        transform_talea = self.transform_talea
        if transform_talea is not None:
            transform_talea = sequencetools.rotate_sequence(transform_talea, n)
        return new(
            self,
            pitch_class_ratio=pitch_class_ratio,
            pitch_class_talea=pitch_class_talea,
            transform_ratio=transform_ratio,
            transform_talea=transform_talea,
            )

    ### PUBLIC PROPERTIES ###

    @property
    def pitch_class_ratio(self):
        return self._pitch_class_ratio

    @property
    def pitch_class_talea(self):
        return self._pitch_class_talea

    @property
    def transform_ratio(self):
        return self._transform_ratio

    @property
    def transform_talea(self):
        return self._transform_talea
