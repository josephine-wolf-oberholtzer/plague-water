# -*- encoding: utf-8 -*-
from abjad.tools import durationtools
from abjad.tools import rhythmmakertools
from abjad.tools import spannertools
from plague_water import makers
from plague_water.materials import durations
from plague_water.materials import rhythm_makers
from plague_water.materials import spanners


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
    timespan_agent=makers.DependentTimespanAgent(
        labels='pedaled',
        ),
    )


piano_fanfare_music_maker = makers.MusicMaker(
    indicator_agent=makers.IndicatorAgent(
        first_leaf_indicators=('accent',),
        inner_leaf_indicators=('staccato',),
        ),
    labels='pedaled',
    rhythm_maker=rhythm_makers.piano_fanfare_rhythm_maker,
    timespan_agent=makers.SemanticTimespanAgent(
        minimum_timespan_duration=durationtools.Duration(3, 16),
        playing_durations=durations.short_durations(6),
        playing_groupings=durations.short_groupings(5),
        tailing_rest_durations=durations.short_durations(2),
        ),
    )


piano_glissed_keys_music_maker = makers.MusicMaker(
    pitch_agent=makers.PitchClassAgent(
        pitch_class_ratio=(1,),
        pitch_class_talea=([0, 7, 2, 9, 5, 1, 11],),
        ),
    rewrite_meter=False,
    rhythm_maker=rhythm_makers.glissing_rhythm_maker,
    spanner_agent=makers.SpannerAgent(
        cyclical_output_spanners=(
            spanners.key_glissando_b_spanner,
            spanners.key_glissando_w_spanner,
            spanners.key_glissando_w_spanner,
            spanners.key_glissando_b_spanner,
            spanners.key_glissando_w_spanner,
            ),
        output_spanners=(
            spanners.key_glissando_spanner,
            spannertools.StaffLinesSpanner(lines=(-4, 4)),
            ),
        ),
    timespan_agent=makers.SemanticTimespanAgent(
        playing_durations=(
            durationtools.Duration(1, 8),
            ),
        playing_groupings=durations.short_groupings(10),
        ),
    )


piano_pointillist_music_maker = makers.MusicMaker(
    rhythm_maker=rhythm_makers.pointillist_rhythm_maker,
    )


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
    'piano_fanfare_music_maker',
    'piano_glissed_keys_music_maker',
    'piano_pedals_music_maker',
    'piano_pointillist_music_maker',
    'piano_trilling_music_maker',
    )
