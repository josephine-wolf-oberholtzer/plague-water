# -*- encoding: utf-8 -*-
from abjad import new
from abjad.tools import durationtools
from abjad.tools import markuptools
from abjad.tools import spannertools
from plague_water import makers
from plague_water.materials import durations
from plague_water.materials import rhythm_makers
from plague_water.materials import spanners


piano_fanfare_music_maker = makers.MusicMaker(
    articulation_handler=makers.ArticulationHandler(
        first_leaf_indicators=('accent',),
        inner_leaf_indicators=('staccato',),
        ),
    minimum_timespan_duration=durationtools.Duration(3, 16),
    playing_durations=durations.short_durations(6),
    playing_groupings=durations.short_groupings(5),
    rhythm_maker=rhythm_makers.stuttering_rhythm_maker,
    tailing_rest_durations=durations.short_durations(2),
    )


piano_gliss_music_maker = makers.MusicMaker(
    articulation_handler=makers.ArticulationHandler(
        apply_to_output=True,
        first_leaf_indicators=(
            markuptools.Markup(
                r'\center-align \natural',
                direction='up',
                ),
            ),
        ),
    leading_rest_durations=durations.medium_durations(7),
    pitch_class_maker=makers.PitchClassMaker(
        pitch_class_ratio=(1,),
        pitch_class_talea=([0, 7, 2, 9, 5, 3, 11],),
        ),
    playing_durations=(
        durationtools.Duration(1, 8),
        ),
    playing_groupings=durations.short_groupings(10),
    registration_maker=makers.RegistrationMaker(
        phrase_inflections=(
            makers.RegisterCurve(
                ratio=(1,),
                registers=(-6, 6),
                ),
            makers.RegisterCurve(
                ratio=(1,),
                registers=(6, -6),
                ),
            ),
        ),
    rhythm_maker=rhythm_makers.glissing_rhythm_maker,
    rewrite_meter=False,
    spanner_maker=makers.SpannerMaker(
        output_spanners=spannertools.Glissando,
        )
    )


piano_key_gliss_music_maker = new(piano_gliss_music_maker,
    spanner_maker__output_spanners=spanners.key_glissando_spanner,
    )


piano_peg_gliss_music_maker = new(piano_gliss_music_maker)


__all__ = (
    'piano_fanfare_music_maker',
    'piano_key_gliss_music_maker',
    )
