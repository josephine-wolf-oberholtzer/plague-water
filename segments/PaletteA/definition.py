# -*- encoding: utf-8 -*-
from abjad import *
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
context_map[score]['pitch_agent'] = materials.primary_pitch_class_agent

### SEMANTIC CONTEXT MAKERS ###

saxophone_context_maker = makers.ContextMaker(
    context_name='Saxophone Voice',
    music_makers=[
        new(materials.saxophone_fanfare_music_maker,
            dynamic_agent=materials.foreground_dynamic_agent,
            timespan_agent__leading_rest_durations=materials.short_durations(4),
            ),
        ],
    )

guitar_context_maker = makers.ContextMaker(
    context_name='Guitar Voice',
    initial_indicators=(
        Markup(r'\box \pad-around #0.5 \large \bold \caps "Color One"', Up),
        ),
    music_makers=[
        new(materials.guitar_fanfare_music_maker,
            dynamic_agent=materials.foreground_dynamic_agent,
            timespan_agent__leading_rest_durations=materials.short_durations(4),
            ),
        ],
    )

piano_rh_context_maker = makers.ContextMaker(
    context_name='Piano RH Voice',
    music_makers=[
        new(materials.piano_fanfare_music_maker,
            chord_agent=materials.domi_chord_agent,
            dynamic_agent=materials.foreground_dynamic_agent,
            grace_maker=makers.GraceMaker(
                lengths=(1, 1, 1, 0, 1, 1, 2,),
                ),
            timespan_agent=makers.SemanticTimespanAgent(
                minimum_timespan_duration=(3, 16),
                playing_durations=materials.make_durations(3, 5)(1),
                playing_groupings=materials.short_groupings(1),
                tailing_rest_durations=materials.short_durations(2),
                ),
            ),
        ],
    )

piano_lh_context_maker = makers.ContextMaker(
    context_name='Piano LH Voice',
    music_makers=[
        new(materials.piano_fanfare_music_maker,
            chord_agent=materials.domi_chord_agent,
            dynamic_agent=materials.foreground_dynamic_agent,
            grace_maker=makers.GraceMaker(
                lengths=(1, 2, 1, 1, 1, 1,),
                ),
            timespan_agent=makers.SemanticTimespanAgent(
                minimum_timespan_duration=(3, 16),
                playing_durations=materials.make_durations(3, 5)(2),
                playing_groupings=materials.short_groupings(3),
                tailing_rest_durations=materials.short_durations(4),
                ),
            ),
        ],
    )

percussion_shaker_context_maker = makers.ContextMaker(
    context_name='Percussion Shaker Voice',
    music_makers=[
        makers.MusicMaker(
            dynamic_agent=materials.midground_dynamic_agent,
            grace_maker=makers.GraceMaker(
                lengths=(1, 1, 1, 1, 0, 1, 0, 0, 0),
                ),
            pitch_agent=materials.shaker_pitch_agent,
            rhythm_maker=materials.pointillist_rhythm_maker,
            timespan_agent=makers.SemanticTimespanAgent(
                leading_rest_durations=materials.short_durations(4),
                minimum_timespan_duration=(3, 16),
                playing_durations=materials.make_durations(3, 5)(1),
                playing_groupings=materials.short_groupings(1),
                ),
            ),
        ],
    )

percussion_woodblock_context_maker = makers.ContextMaker(
    context_name='Percussion Woodblock Voice',
    music_makers=[
        materials.silent_music_maker,
        ],
    )

percussion_drum_context_maker = makers.ContextMaker(
    context_name='Percussion Drum Voice',
    music_makers=[
        makers.MusicMaker(
            dynamic_agent=materials.midground_dynamic_agent,
            grace_maker=makers.GraceMaker(
                lengths=(1, 0, 1, 1, 0, 1,),
                ),
            pitch_agent=materials.drum_pitch_agent,
            rhythm_maker=materials.pointillist_rhythm_maker,
            timespan_agent=makers.SemanticTimespanAgent(
                minimum_timespan_duration=(3, 16),
                playing_durations=materials.make_durations(3, 5)(1),
                playing_groupings=materials.short_groupings(1),
                tailing_rest_durations=materials.short_durations(2),
                ),
            ),
        ],
    )

### DEPENDENT CONTEXT MAKERS ###

piano_pedals_context_maker = makers.ContextMaker(
    context_dependencies=(
        'Piano LH Voice',
        'Piano RH Voice',
        ),
    context_name='Piano Pedals',
    music_makers=[
        materials.piano_pedals_music_maker,
        ],
    )

### SEGMENT DEFINITION ###

segment_maker = makers.SegmentMaker(
    context_map=context_map,
    is_final_segment=False,
    measure_segmentation_talea=measure_segmentation_talea,
    permitted_time_signatures=permitted_time_signatures,
    segment_tempo=segment_tempo,
    context_makers=(
        guitar_context_maker,
        percussion_drum_context_maker,
        percussion_shaker_context_maker,
        percussion_woodblock_context_maker,
        piano_lh_context_maker,
        piano_pedals_context_maker,
        piano_rh_context_maker,
        saxophone_context_maker,
        )
    )
