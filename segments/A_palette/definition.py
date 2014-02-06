# -*- encoding: utf-8 -*-
from abjad import new
from abjad.tools import datastructuretools
from abjad.tools import durationtools
from abjad.tools import indicatortools
from abjad.tools import rhythmmakertools
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
context_map[score]['pitch_class_agent'] = makers.PitchClassAgent(
    pitch_class_ratio=(1, 1, 1),
    pitch_class_talea=(
        [0, 3, 2, 5, 11, 1],
        [2, 8, 10, 11],
        [1, 4],
        ),
    transform_ratio=None,
    transform_talea=None,
    )

### context_makerES ###

guitar_context_maker = makers.ContextMaker(
    context_name='Guitar Voice',
    music_makers=[
        materials.guitar_fanfare_music_maker,
        ],
    )

saxophone_context_maker = makers.ContextMaker(
    context_name='Saxophone Voice',
    music_makers=[
        materials.saxophone_fanfare_music_maker,
        ],
    )

piano_rh_context_maker = makers.ContextMaker(
    context_name='Piano RH Voice',
    music_makers=[
        materials.piano_fanfare_music_maker,
        ],
    )

piano_lh_context_maker = makers.ContextMaker(
    context_name='Piano LH Voice',
    music_makers=[
        new(materials.piano_fanfare_music_maker,
            timespan_agent__playing_durations=materials.short_durations(3),
            timespan_agent__playing_groupings=materials.short_groupings(4),
            timespan_agent__tailing_rest_durations=materials.short_durations(3),
            ),
        ],
    )

piano_dynamics_context_maker = makers.ContextMaker(
    context_dependencies=(
        'Piano LH Voice',
        'Piano RH Voice',
        ),
    context_name='Piano Dynamics',
    music_makers=[
        makers.MusicMaker(
            dynamic_agent=makers.DynamicAgent(
                cyclic_dynamic_expressions=(
                    makers.DynamicExpression(
                        hairpin_start_token='f',
                        hairpin_stop_token='p',
                        ),
                    makers.DynamicExpression(
                        hairpin_start_token='sfp',
                        hairpin_stop_token='ff',
                        ),
                    makers.DynamicExpression(
                        hairpin_start_token='ppp',
                        hairpin_style='constante',
                        ),
                    ),
                ),
            pitch_class_agent=makers.PitchClassAgent(
                pitch_class_ratio=(1,),
                pitch_class_talea=([0, 0],),
                ),
            rewrite_meter=False,
            rhythm_maker=rhythmmakertools.IncisedRhythmMaker(
                beam_specifier=rhythmmakertools.BeamSpecifier(
                    beam_each_division=False,
                    beam_divisions_together=False,
                    ),
                incise_specifier=rhythmmakertools.InciseSpecifier(
                    incise_output=True,
                    suffix_lengths=(1,),
                    suffix_talea=(1,),
                    talea_denominator=16,
                    ),
                ),
            timespan_agent=makers.DependentTimespanAgent(),
            ),
        ],
    )

piano_pedals_context_maker = makers.ContextMaker(
    context_dependencies=(
        'Piano LH Voice',
        'Piano RH Voice',
        ),
    context_name='Piano Pedals',
    music_makers=[
        makers.MusicMaker(
            spanner_agent=makers.SpannerAgent(
                cyclical_output_spanners=(
                    makers.ComplexPianoPedalSpanner(
                        include_inner_leaves=True,
                        ),
                    makers.ComplexPianoPedalSpanner(
                        include_inner_leaves=False,
                        let_vibrate=True,
                        ),
                    ),
                ),
            rewrite_meter=False,
            rhythm_maker=rhythmmakertools.SkipRhythmMaker(),
            timespan_agent=makers.DependentTimespanAgent(),
            ),
        ],
    )

percussion_rh_context_maker = makers.ContextMaker(
    context_name='Percussion RH Voice',
    music_makers=[
        materials.basic_music_maker,
        ],
    )

percussion_lh_context_maker = makers.ContextMaker(
    context_name='Percussion LH Voice',
    music_makers=[
        materials.basic_music_maker,
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
        percussion_lh_context_maker,
        percussion_rh_context_maker,
        piano_lh_context_maker,
        piano_rh_context_maker,
        piano_pedals_context_maker,
        piano_dynamics_context_maker,
        saxophone_context_maker,
        )
    )
