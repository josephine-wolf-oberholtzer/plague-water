# -*- encoding: utf-8 -*-
from abjad import *
from plague_water import makers
from plague_water import materials

### SEGMENT PARAMETERS ###

measure_segmentation_talea = (1,)
permitted_time_signatures = materials.prime_time_signatures
segment_tempo = indicatortools.Tempo(durationtools.Duration(1, 4), 96)

### CONTEXT MAP ###

score_template = makers.PlagueWaterScoreTemplate()
score = score_template()
context_map = datastructuretools.ContextMap(score_template)
context_map[score]['pitch_agent'] = materials.primary_pitch_class_agent

### TIMESPAN AGENTS ###

short_timespan_agent = makers.SemanticTimespanAgent(
    leading_rest_durations=materials.very_short_durations(1),
    minimum_timespan_duration=Duration(1, 8),
    playing_durations=materials.short_durations(2),
    playing_groupings=[1, 1, 1, 2],
    tailing_rest_durations=materials.short_durations(2),
    )

medium_timespan_agent = makers.SemanticTimespanAgent(
    leading_rest_durations=materials.very_short_durations(2),
    minimum_timespan_duration=Duration(1, 8),
    playing_durations=materials.short_durations(8),
    playing_groupings=[1, 2, 1, 1, 1],
    tailing_rest_durations=materials.medium_durations(5),
    )

long_timespan_agent = makers.SemanticTimespanAgent(
    leading_rest_durations=materials.long_durations(1),
    minimum_timespan_duration=Duration(1, 8),
    playing_durations=materials.medium_durations(9),
    playing_groupings=[1, 2, 1, 1, 1, 2, 1, 2],
    tailing_rest_durations=materials.long_durations(4),
    )

### SEMANTIC CONTEXT MAKERS ###

sempre_ppp = Markup(r'''
    \pad-around #2
        \italic "(sempre" \dynamic ppp \italic )
    ''',
    Down,
    )

saxophone_context_maker = makers.ContextMaker(
    context_name='Saxophone Voice',
    initial_indicators=(sempre_ppp,),
    music_makers=[
        new(materials.basic_music_maker,
            grace_maker=makers.GraceMaker(
                lengths=(1, 0, 1, 0, 0, 1, 2,),
                ),
            rhythm_maker=materials.pointillist_rhythm_maker,
            spanner_agent=makers.SpannerAgent(
                cyclical_output_spanners=(
                    materials.airtone_spanner,
                    None,
                    ),
                output_spanners=Slur,
                ),
            timespan_agent=short_timespan_agent.transform_cursors(3),
            ),
        new(materials.basic_music_maker,
            grace_maker=makers.GraceMaker(
                lengths=(1, 0, 1, 0, 0, 1, 2,),
                ),
            indicator_agent=makers.IndicatorAgent(
                each_leaf_indicators=(
                    ('snappizzicato',),
                    ('snappizzicato', 'accent'),
                    ),
                ),
            rhythm_maker=materials.pointillist_rhythm_maker,
            timespan_agent=short_timespan_agent.transform_cursors(3),
            ),
        ]
    )

guitar_context_maker = makers.ContextMaker(
    context_name='Guitar Voice',
    initial_indicators=(
        Markup(r'\box \pad-around #0.5 \large \bold \caps "Color Four"', Up),
        sempre_ppp,
        ),
    music_maker_indices=(0, 1, 0, 0, 1),
    music_makers=[
        new(materials.basic_music_maker,
            chord_agent=materials.guitar_chord_agent,
            grace_maker=makers.GraceMaker(
                lengths=(1, 0, 1, 0, 0, 1, 2,),
                ),
            indicator_agent=makers.IndicatorAgent(
                each_leaf_indicators=('staccato',),
                ),
            rhythm_maker=materials.pointillist_rhythm_maker,
            timespan_agent=short_timespan_agent.transform_cursors(1),
            ),
        new(materials.basic_music_maker,
            grace_maker=makers.GraceMaker(
                lengths=(1, 0, 1, 0, 0, 1, 1,),
                ),
            indicator_agent=makers.IndicatorAgent(
                each_leaf_indicators=('staccato',),
                last_leaf_indicators=(
                    indicatortools.BendAfter(-4),
                    indicatortools.BendAfter(4),
                    ),
                ),
            rhythm_maker=materials.pointillist_rhythm_maker,
            timespan_agent=medium_timespan_agent.transform_cursors(2),
            ),
        ]
    )

piano_rh_context_maker = makers.ContextMaker(
    context_name='Piano RH Voice',
    initial_indicators=(sempre_ppp,),
    music_maker_indices=(1, 0, 0, 0),
    music_makers=[
        new(materials.piano_glissed_keys_music_maker,
            timespan_agent__leading_rest_durations=materials.short_durations,
            ),
        makers.MusicMaker(
            chord_agent=materials.clusters_chord_agent,
            dynamic_agent=materials.background_dynamic_agent,
            labels='pedaled',
            rhythm_maker=materials.pointillist_rhythm_maker,
            spanner_agent=materials.trilling_constantly_spanner_agent,
            timespan_agent=new(
                materials.pointillist_sparse_timespan_agent,
                playing_durations=materials.very_short_durations,
                playing_groupings=[1],
                ),
            )
        ],
    )

piano_lh_context_maker = makers.ContextMaker(
    context_name='Piano LH Voice',
    initial_indicators=(sempre_ppp,),
    music_maker_indices=(0, 0, 1, 0, 0, 0, 1),
    music_makers=[
        new(materials.piano_glissed_keys_music_maker,
            timespan_agent__leading_rest_durations=materials.long_durations,
            ),
        makers.MusicMaker(
            chord_agent=materials.clusters_chord_agent,
            dynamic_agent=materials.background_dynamic_agent,
            labels='pedaled',
            rhythm_maker=materials.pointillist_rhythm_maker,
            spanner_agent=new(
                materials.trilling_constantly_spanner_agent,
                minimum_logical_tie_duration=Duration(1, 16),
                ),
            timespan_agent=new(
                materials.pointillist_sparse_timespan_agent,
                playing_durations=materials.very_short_durations,
                playing_groupings=[1],
                ),
            ).transform_cursors(4),
        ],
    )

percussion_rhythm_maker_one = rhythmmakertools.TaleaRhythmMaker(
    beam_specifier=rhythmmakertools.BeamSpecifier(
        beam_each_division=False,
        beam_divisions_together=False,
        ),
    tie_specifier=rhythmmakertools.TieSpecifier(
        tie_across_divisions=False,
        tie_split_notes=False,
        ),
    talea=rhythmmakertools.Talea(
        counts=(5, 8, 7),
        denominator=16,
        ),
    )

percussion_rhythm_maker_two = rhythmmakertools.IncisedRhythmMaker(
    beam_specifier=rhythmmakertools.BeamSpecifier(
        beam_each_division=False,
        beam_divisions_together=False,
        ),
    incise_specifier=rhythmmakertools.InciseSpecifier(
        fill_with_notes=False,
        incise_divisions=True,
        prefix_talea=(2,),
        prefix_lengths=(1, 1, 2, 1, 2),
        talea_denominator=16,
        ),
    extra_counts_per_division=(0, 0, 0, 0, 1),
    split_divisions_by_counts=(5, 7),
    tie_specifier=rhythmmakertools.TieSpecifier(
        tie_across_divisions=False,
        tie_split_notes=False,
        ),
    )

percussion_shaker_context_maker = makers.ContextMaker(
    context_name='Percussion Shaker Voice',
    initial_indicators=(sempre_ppp,),
    music_maker_indices=(0, 0, 1, 0, 1),
    music_makers=[
        new(materials.basic_music_maker,
            grace_maker=makers.GraceMaker(
                lengths=(1, 0, 1, 0, 0, 1, 2,),
                ),
            indicator_agent=makers.IndicatorAgent(
                each_leaf_indicators=('staccato',),
                ),
            pitch_agent=materials.shaker_pitch_agent,
            rhythm_maker=percussion_rhythm_maker_two,
            timespan_agent=medium_timespan_agent.transform_cursors(9),
            ),
        new(materials.basic_music_maker,
            indicator_agent=makers.IndicatorAgent(
                each_leaf_indicators=('staccato',),
                ),
            pitch_agent=materials.shaker_pitch_agent,
            rhythm_maker=percussion_rhythm_maker_two,
            timespan_agent=long_timespan_agent.transform_cursors(10),
            ),
        ],
    )

percussion_woodblock_context_maker = makers.ContextMaker(
    context_name='Percussion Woodblock Voice',
    initial_indicators=(sempre_ppp,),
    music_makers=[
        new(materials.basic_music_maker,
            grace_maker=makers.GraceMaker(
                lengths=(1, 0, 1, 0, 0, 1, 2,),
                ),
            indicator_agent=makers.IndicatorAgent(
                each_leaf_indicators=('staccato',),
                ),
            pitch_agent=new(materials.woodblock_pitch_agent,
                talea=(0, 4, 2, 3, 1, 4, 2, 3, 0, 2, 1, 3, 1, 3),
                ),
            rhythm_maker=percussion_rhythm_maker_two,
            timespan_agent=long_timespan_agent.transform_cursors(12),
            ),
        ],
    )

percussion_drum_context_maker = makers.ContextMaker(
    context_name='Percussion Drum Voice',
    initial_indicators=(
        Markup(r'''\box \pad-around #0.5 \large \bold \caps
            "Styrofoam"
            ''', Up),
        sempre_ppp,
        ),
    music_maker_indices=(0, 0, 1, 0, 1),
    music_makers=[
        new(materials.basic_music_maker,
            indicator_agent=makers.IndicatorAgent(
                first_leaf_indicators=('accent',),
                ),
            pitch_agent=new(materials.drum_pitch_agent,
                talea=(0,),
                ),
            rhythm_maker=percussion_rhythm_maker_one,
            spanner_agent=makers.SpannerAgent(
                cyclical_logical_tie_spanners=makers.StemTremoloSpanner(),
                minimum_logical_tie_duration=durationtools.Duration(1, 16),
                ),
            timespan_agent=medium_timespan_agent.transform_cursors(12),
            ),
        new(materials.basic_music_maker,
            grace_maker=makers.GraceMaker(
                lengths=(1, 0, 1, 0, 0, 1, 2,),
                ),
            pitch_agent=new(materials.drum_pitch_agent,
                talea=(0,),
                ),
            rhythm_maker=percussion_rhythm_maker_one,
            spanner_agent=makers.SpannerAgent(
                logical_tie_spanners=makers.StemTremoloSpanner(),
                minimum_logical_tie_duration=durationtools.Duration(1, 16),
                ),
            timespan_agent=long_timespan_agent.transform_cursors((13, True)),
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
        materials.silent_music_maker,
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
