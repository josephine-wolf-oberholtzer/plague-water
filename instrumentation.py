# -*- encoding: utf-8 -*-
from abjad import *


instrumentation=instrumenttools.InstrumentationSpecifier(
    performers=instrumenttools.PerformerInventory(
        [
            instrumenttools.Performer(
                name='saxophonist',
                instruments=instrumenttools.InstrumentInventory(
                    [
                        instrumenttools.BaritoneSaxophone(
                            instrument_name='baritone saxophone',
                            short_instrument_name='bar. sax.',
                            instrument_name_markup=markuptools.Markup(
                                ('Baritone saxophone',)
                                ),
                            short_instrument_name_markup=markuptools.Markup(
                                ('Bar. sax.',)
                                ),
                            allowable_clefs=indicatortools.ClefInventory(
                                [
                                    indicatortools.Clef(
                                        'treble'
                                        ),
                                    ]
                                ),
                            pitch_range=pitchtools.PitchRange(
                                '[C2, Ab4]'
                                ),
                            sounding_pitch_of_written_middle_c=pitchtools.NamedPitch('ef,'),
                            ),
                        ]
                    ),
                ),
            instrumenttools.Performer(
                name='pianist',
                instruments=instrumenttools.InstrumentInventory(
                    [
                        instrumenttools.Piano(
                            instrument_name='piano',
                            short_instrument_name='pf.',
                            instrument_name_markup=markuptools.Markup(
                                ('Piano',)
                                ),
                            short_instrument_name_markup=markuptools.Markup(
                                ('Pf.',)
                                ),
                            allowable_clefs=indicatortools.ClefInventory(
                                [
                                    indicatortools.Clef(
                                        'treble'
                                        ),
                                    indicatortools.Clef(
                                        'bass'
                                        ),
                                    ]
                                ),
                            pitch_range=pitchtools.PitchRange(
                                '[A0, C8]'
                                ),
                            sounding_pitch_of_written_middle_c=pitchtools.NamedPitch("c'"),
                            ),
                        ]
                    ),
                ),
            instrumenttools.Performer(
                name='guitarist',
                instruments=instrumenttools.InstrumentInventory(
                    [
                        instrumenttools.Guitar(
                            instrument_name='guitar',
                            short_instrument_name='gt.',
                            instrument_name_markup=markuptools.Markup(
                                ('Guitar',)
                                ),
                            short_instrument_name_markup=markuptools.Markup(
                                ('Gt.',)
                                ),
                            allowable_clefs=indicatortools.ClefInventory(
                                [
                                    indicatortools.Clef(
                                        'treble'
                                        ),
                                    ]
                                ),
                            pitch_range=pitchtools.PitchRange(
                                '[E2, E5]'
                                ),
                            sounding_pitch_of_written_middle_c=pitchtools.NamedPitch('c'),
                            ),
                        ]
                    ),
                ),
            instrumenttools.Performer(
                name='percussionist',
                instruments=instrumenttools.InstrumentInventory(
                    [
                        instrumenttools.UntunedPercussion(
                            instrument_name='untuned percussion',
                            short_instrument_name='perc.',
                            instrument_name_markup=markuptools.Markup(
                                ('Untuned percussion',)
                                ),
                            short_instrument_name_markup=markuptools.Markup(
                                ('Perc.',)
                                ),
                            allowable_clefs=indicatortools.ClefInventory(
                                [
                                    indicatortools.Clef(
                                        'percussion'
                                        ),
                                    ]
                                ),
                            pitch_range=pitchtools.PitchRange(
                                '[A0, C8]'
                                ),
                            sounding_pitch_of_written_middle_c=pitchtools.NamedPitch("c'"),
                            ),
                        ]
                    ),
                ),
            ]
        ),
    )