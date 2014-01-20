# -*- encoding: utf-8 -*-
from abjad import *
from plague_water import makers
from plague_water import materials
from plague_water import score_templates

### SEGMENT PARAMETERS ###

permitted_time_signatures = materials.mixed_time_signatures
segment_tempo = materials.tempo_inventory[0]

### CONTEXT MAP ###

score_template = score_templates.PlagueWaterScoreTemplate()
score = score_template()
context_map = datastructuretools.ContextMap(score_template)
context_map[score]['music_maker'] = makers.MusicMaker(
    rhythm_maker=rhythmmakertools.EqualDivisionRhythmMaker(3),
    )
short_duration_cursor = materials.short_duration_server()
context_map[score]['playing_durations'] = short_duration_cursor
context_map[score]['playing_groupings'] = materials.short_grouping_server()
context_map[score]['leading_rest_durations'] = short_duration_cursor
context_map[score]['tailing_rest_durations'] = short_duration_cursor

### SEGMENT DEFINITION ###

segment_maker = makers.SegmentMaker(
    context_map=context_map,
    is_final_segment=False,
    permitted_time_signatures=permitted_time_signatures,
    segment_tempo=segment_tempo,
    )
