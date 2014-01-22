# -*- encoding: utf-8 -*-
from abjad import *
from plague_water import makers
from plague_water import materials
from plague_water import score_templates

### SEGMENT PARAMETERS ###

measure_segmentation_talea = (1,)
permitted_time_signatures = materials.square_time_signatures
segment_tempo = indicatortools.Tempo(Duration(1, 4), 64)

### CONTEXT MAP ###

score_template = score_templates.PlagueWaterScoreTemplate()
score = score_template()
context_map = datastructuretools.ContextMap(score_template)
short_duration_cursor = materials.short_duration_server()
context_map[score]['playing_durations'] = materials.medium_duration_server()
context_map[score]['playing_groupings'] = materials.short_grouping_server()

### BRUSHES ###

counts_talea = sequencetools.remap_sequence_by_range_pairs(
    materials.euler_hundreds,
    [
        ((0, 99), (0, 4)),
        ],
    )
intervals_talea = sequencetools.remap_sequence_by_range_pairs(
    materials.euler_hundreds,
    [
        ((0, 49), (-6, -1)),
        ((50, 99), (1, 6)),
        ],
    )

piano_rh_brush = makers.Brush([
    new(materials.staggering_music_maker,
        chord_maker=makers.ChordMaker(
            counts_talea=tuple(counts_talea),
            intervals_talea=tuple(intervals_talea),
            ),
        )
    ])
piano_lh_brush = makers.Brush([
    new(materials.staggering_music_maker,
        chord_maker=makers.ChordMaker(
            counts_talea=tuple(counts_talea),
            intervals_talea=tuple(intervals_talea),
            ),
        )
    ])

### SEGMENT DEFINITION ###

segment_maker = makers.SegmentMaker(
    context_map=context_map,
    is_final_segment=False,
    measure_segmentation_talea=measure_segmentation_talea,
    permitted_time_signatures=permitted_time_signatures,
    piano_lh_brush=piano_lh_brush,
    piano_rh_brush=piano_rh_brush,
    segment_tempo=segment_tempo,
    )
