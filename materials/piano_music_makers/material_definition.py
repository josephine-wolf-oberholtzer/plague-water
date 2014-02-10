# -*- encoding: utf-8 -*-
from abjad import new
from abjad.tools import durationtools
from abjad.tools import markuptools
from abjad.tools import rhythmmakertools
from abjad.tools import spannertools
from plague_water import makers
from plague_water.materials import durations
from plague_water.materials import rhythm_makers
from plague_water.materials import spanners


piano_dynamics_music_maker = makers.MusicMaker(
    apply_beam=False,
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
            prefix_lengths=(0,),
            suffix_lengths=(1,),
            suffix_talea=(1,),
            talea_denominator=32,
            ),
        ),
    timespan_agent=makers.DependentTimespanAgent(),
    )


piano_pedals_music_maker = makers.MusicMaker(
    apply_beam=False,
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
    )


piano_fanfare_music_maker = makers.MusicMaker(
    indicator_agent=makers.IndicatorAgent(
        first_leaf_indicators=('accent',),
        inner_leaf_indicators=('staccato',),
        ),
    rhythm_maker=rhythm_makers.piano_fanfare_rhythm_maker,
    timespan_agent=makers.SemanticTimespanAgent(
        minimum_timespan_duration=durationtools.Duration(3, 16),
        playing_durations=durations.short_durations(6),
        playing_groupings=durations.short_groupings(5),
        tailing_rest_durations=durations.short_durations(2),
        ),
    )


piano_glissed_music_maker = makers.MusicMaker(
    indicator_agent=makers.IndicatorAgent(
        apply_to_output=True,
        first_leaf_indicators=(
            markuptools.Markup(
                r'\center-align \natural',
                direction='up',
                ),
            ),
        ),
    pitch_class_agent=makers.PitchClassAgent(
        pitch_class_ratio=(1,),
        pitch_class_talea=([0, 7, 2, 9, 5, 3, 11],),
        ),
    rewrite_meter=False,
    rhythm_maker=rhythm_makers.glissing_rhythm_maker,
    spanner_agent=makers.SpannerAgent(
        output_spanners=spannertools.Glissando,
        ),
    timespan_agent=makers.SemanticTimespanAgent(
        playing_durations=(
            durationtools.Duration(1, 8),
            ),
        playing_groupings=durations.short_groupings(10),
        ),
    )


piano_glissed_keys_music_maker = new(piano_glissed_music_maker,
    indicator_agent__first_leaf_indicators=(
        markuptools.Markup(
            r'\pad-around #1 \box \pad-around #1 \small KEYS',
            Up,
            ),
        ),
    spanner_agent__output_spanners=spanners.key_glissando_spanner,
    )


piano_glissed_pegs_music_maker = new(piano_glissed_music_maker,
    indicator_agent__first_leaf_indicators=(
        markuptools.Markup(
            r'\pad-around #1 \box \pad-around #1 \small PEGS',
            Up,
            ),
        ),
    spanner_agent__output_spanners=spanners.key_glissando_spanner,
    )


piano_pointillist_music_maker = makers.MusicMaker(
    rhythm_maker=rhythm_makers.pointillist_rhythm_maker,
    )


piano_rolled_chords_music_maker = makers.MusicMaker()


piano_trilling_music_maker = makers.MusicMaker(
    rhythm_maker=rhythm_makers.flowing_rhythm_maker,
    spanner_agent=makers.SpannerAgent(
        cyclical_logical_tie_spanners=(
            spannertools.ComplexTrillSpanner(interval='+m3'),
            spannertools.ComplexTrillSpanner(interval='+P4'),
            spannertools.ComplexTrillSpanner(interval='+m3'),
            spannertools.ComplexTrillSpanner(interval='+P4'),
            spannertools.ComplexTrillSpanner(interval='+m2'),
            spannertools.ComplexTrillSpanner(interval='+m3'),
            spannertools.ComplexTrillSpanner(interval='+P4'),
            ),
        ),
    )


__all__ = (
    'piano_dynamics_music_maker',
    'piano_fanfare_music_maker',
    'piano_glissed_keys_music_maker',
    'piano_glissed_pegs_music_maker',
    'piano_pedals_music_maker',
    'piano_pointillist_music_maker',
    'piano_rolled_chords_music_maker',
    'piano_trilling_music_maker',
    )
