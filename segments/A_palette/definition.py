# -*- encoding: utf-8 -*-
from abjad import new
from abjad.tools import datastructuretools
from abjad.tools import durationtools
from abjad.tools import indicatortools
from plague_water import makers
from plague_water import materials
from plague_water import score_templates

### SEGMENT PARAMETERS ###

measure_segmentation_talea = (1,)
permitted_time_signatures = materials.quick_time_signatures
segment_tempo = indicatortools.Tempo(durationtools.Duration(1, 4), 64)

### CONTEXT MAP ###

score_template = score_templates.PlagueWaterScoreTemplate()
score = score_template()
context_map = datastructuretools.ContextMap(score_template)
context_map[score]['minimum_timespan_duration'] = durationtools.Duration(1, 8)
context_map[score]['pitch_class_maker'] = makers.PitchClassMaker(
    pitch_class_ratio=(1, 1, 1),
    pitch_class_talea=(
        [0, 3, 2, 5, 11, 1],
        [2, 8, 10, 11],
        [1, 4],
        ),
    transform_ratio=None,
    transform_talea=None,
    )

### timespan_makerES ###

guitar_timespan_maker = makers.TimespanMaker(
    context_name='Guitar Voice',
    music_makers=[
        makers.MusicMaker(
            leading_rest_durations=materials.short_durations(15),
            minimum_timespan_duration=durationtools.Duration(1, 16),
            playing_durations=materials.very_short_durations(13),
            playing_groupings=materials.short_groupings(12),
            ),
        ],
    )

saxophone_timespan_maker = makers.TimespanMaker(
    context_name='Saxophone Voice',
    music_makers=[
        makers.MusicMaker(
            leading_rest_durations=materials.short_durations(15),
            minimum_timespan_duration=durationtools.Duration(1, 16),
            playing_durations=materials.very_short_durations(13),
            playing_groupings=materials.short_groupings(12),
            ),
        ],
    )

piano_rh_timespan_maker = makers.TimespanMaker(
    context_name='Piano RH Voice',
    initial_music_maker=makers.MusicMaker(
        playing_durations=materials.short_durations(),
        playing_groupings=materials.short_groupings(),
        ),
    music_makers=[
        makers.MusicMaker(
            leading_rest_durations=materials.short_durations(),
            playing_durations=materials.short_durations(),
            playing_groupings=materials.short_groupings(),
            ),
        ],
    )

piano_lh_timespan_maker = makers.TimespanMaker(
    context_name='Piano LH Voice',
    initial_music_maker=makers.MusicMaker(
        playing_durations=materials.short_durations(),
        playing_groupings=materials.short_groupings(),
        ),
    music_makers=[
        makers.MusicMaker(
            leading_rest_durations=materials.medium_durations(1),
            playing_durations=materials.short_durations(),
            playing_groupings=materials.short_groupings(),
            ),
        ],
    )

percussion_rh_timespan_maker = makers.TimespanMaker(
    context_name='Percussion RH Voice',
    music_makers=[
        makers.MusicMaker(
            leading_rest_durations=materials.short_durations(),
            playing_durations=materials.short_durations(),
            playing_groupings=materials.short_groupings(),
            ),
        ],
    )

percussion_lh_timespan_maker = makers.TimespanMaker(
    context_name='Percussion LH Voice',
    initial_music_maker=makers.MusicMaker(
        playing_durations=materials.short_durations(),
        playing_groupings=materials.short_groupings(),
        ),
    music_makers=[
        makers.MusicMaker(
            leading_rest_durations=materials.medium_durations(2),
            playing_durations=materials.short_durations(),
            playing_groupings=materials.short_groupings(),
            ),
        ],
    )

### SEGMENT DEFINITION ###

segment_maker = makers.SegmentMaker(
    context_map=context_map,
    is_final_segment=False,
    measure_segmentation_talea=measure_segmentation_talea,
    permitted_time_signatures=permitted_time_signatures,
    segment_tempo=segment_tempo,
    timespan_makers=(
        guitar_timespan_maker,
        percussion_lh_timespan_maker,
        percussion_rh_timespan_maker,
        piano_lh_timespan_maker,
        piano_rh_timespan_maker,
        saxophone_timespan_maker,
        )
    )
