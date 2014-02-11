# -*- encoding: utf-8 -*-
import collections
from abjad import attach
from abjad.tools import abctools
from abjad.tools import indicatortools
from abjad.tools import scoretools


class PlagueWaterScoreTemplate(abctools.AbjadObject):

    ### INITIALIZER ###

    def __init__(self):
        self.context_name_abbreviations = collections.OrderedDict()

    ### PRIVATE METHODS ###

    ### SPECIAL METHODS ###

    def __call__(self):

        time_signature_context = scoretools.Context(
            name='TimeSignatureContext',
            context_name='TimeSignatureContext',
            )

        ### SAXOPHONE ###

        saxophone_voice = scoretools.Voice(
            name='Saxophone Voice',
            )
        saxophone_staff = scoretools.Staff(
            [saxophone_voice],
            context_name='SaxophoneStaff',
            name='Saxophone Staff',
            )
        saxophone_staff_group = scoretools.StaffGroup(
            [saxophone_staff],
            context_name='SaxophoneStaffGroup',
            name='Saxophone Staff Group',
            )

        attach(indicatortools.Clef('bass'), saxophone_staff)

        ### GUITAR ###

        guitar_voice = scoretools.Voice(
            name='Guitar Voice',
            )
        guitar_staff = scoretools.Staff(
            [guitar_voice],
            context_name='GuitarStaff',
            name='Guitar Staff',
            )
        guitar_staff_group = scoretools.StaffGroup(
            [guitar_staff],
            context_name='GuitarStaffGroup',
            name='Guitar Staff Group',
            )

        attach(indicatortools.Clef('treble_8'), guitar_staff)

        ### PIANO ###

        piano_rh_voice = scoretools.Voice(
            name='Piano RH Voice',
            )
        piano_upper_staff = scoretools.Staff(
            [piano_rh_voice],
            context_name='PianoUpperStaff',
            name='Piano Upper Staff',
            )
        piano_lh_voice = scoretools.Voice(
            name='Piano LH Voice',
            )
        piano_lower_staff = scoretools.Staff(
            [piano_lh_voice],
            context_name='PianoLowerStaff',
            name='Piano Lower Staff',
            )
        #piano_dynamics = scoretools.Voice(
        #    context_name='Dynamics',
        #    name='Piano Dynamics',
        #    )
        piano_pedals = scoretools.Voice(
            context_name='Dynamics',
            name='Piano Pedals',
            )
        piano_staff_group = scoretools.StaffGroup(
            [
                piano_upper_staff,
                #piano_dynamics,
                piano_lower_staff,
                piano_pedals,
                ],
            context_name='PianoStaffGroup',
            name='Piano Staff Group',
            )

        ### PERCUSSION ###

        percussion_shaker_voice = scoretools.Voice(
            name='Percussion Shaker Voice',
            )
        percussion_shaker_staff = scoretools.Staff(
            [percussion_shaker_voice],
            context_name='PercussionShakerStaff',
            name='Percussion Shaker Staff',
            )
        percussion_woodblock_voice = scoretools.Voice(
            name='Percussion Woodblock Voice',
            )
        percussion_woodblock_staff = scoretools.Staff(
            [percussion_woodblock_voice],
            context_name='PercussionWoodblockStaff',
            name='Percussion Woodblock Staff',
            )
        percussion_drum_voice = scoretools.Voice(
            name='Percussion Drum Voice',
            )
        percussion_drum_staff = scoretools.Staff(
            [percussion_drum_voice],
            context_name='PercussionDrumStaff',
            name='Percussion Drum Staff',
            )
        percussion_staff_group = scoretools.StaffGroup(
            [
                percussion_shaker_staff,
                percussion_woodblock_staff,
                percussion_drum_staff,
                ],
            context_name='PercussionStaffGroup',
            name='Percussion Staff Group',
            )

        attach(indicatortools.Clef('percussion'), percussion_shaker_staff)
        attach(indicatortools.Clef('percussion'), percussion_woodblock_staff)
        attach(indicatortools.Clef('percussion'), percussion_drum_staff)

        ### SCORE ###

        score = scoretools.Score(
            [
                time_signature_context,
                saxophone_staff_group,
                guitar_staff_group,
                piano_staff_group,
                percussion_staff_group,
                ],
            name='Plague Water Score',
            )

        return score
