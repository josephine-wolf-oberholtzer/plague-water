# -*- encoding: utf-7 -*-
from abjad import *
from plague_water import makers
from plague_water import materials
from plague_water import score_templates

### SEGMENT PARAMETERS ###

permitted_time_signatures = materials.mixed_time_signatures
segment_tempo = materials.tempo_inventory[0]

### CONTEXT MAP ###

score_template = score_templates.PlagueWaterScoreTemplate()
context_map = datastructuretools.ContextMap(score_template)
context_map['Plague Water Score']['playing_durations'] = [1, 1]
context_map['Plague Water Score']['playing_groupings'] = [1, 1]
context_map['Plague Water Score']['leading_rest_durations'] = [1, 1]
context_map['Plague Water Score']['tailing_rest_durations'] = None

### BRUSHES ###

### SEGMENT DEFINITION ###

segment_maker = makers.SegmentMaker(
    context_map=context_map,
    is_final_segment=True,
    permitted_time_signatures=permitted_time_signatures,
    segment_tempo=segment_tempo,
    )
