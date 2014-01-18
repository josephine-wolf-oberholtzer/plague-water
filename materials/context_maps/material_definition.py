# -*- encoding: utf-8 -*-
from abjad import *
from plague_water import makers
from plague_water import score_templates
from plague_water.materials import duration_servers


score_template = score_templates.PlagueWaterScoreTemplate() 
score = score_template()

stuttering_context_map = datastructuretools.ContextMap(score_template)
stuttering_context_map[score]['music_maker'] = makers.MusicMaker()
stuttering_context_map[score]['rhythm_maker'] = \
    rhythmmakertools.EqualDivisionRhythmMaker(leaf_count=2)
stuttering_context_map[score]['playing_durations'] = \
    duration_servers.short_duration_server()
stuttering_context_map[score]['playing_groupings'] = [1, 1]
stuttering_context_map[score]['leading_rest_durations'] = \
    duration_servers.short_duration_server()
stuttering_context_map[score]['tailing_rest_durations'] = \
    duration_servers.short_duration_server()


__all__ = (
    'stuttering_context_map',
    )
