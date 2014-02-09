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

        saxophone_staff_group = scoretools.StaffGroup(
            [
                scoretools.Staff(
                    [
                        scoretools.Voice(
                            name='Saxophone Voice',
                            ),
                        ],
                    context_name='SaxophoneStaff',
                    name='Saxophone Staff',
                    ),
                ],
            context_name='SaxophoneStaffGroup',
            name='Saxophone Staff Group',
            )

        guitar_staff_group = scoretools.StaffGroup(
            [
                scoretools.Staff(
                    [
                        scoretools.Voice(
                            name='Guitar Voice',
                            ),
                        ],
                    context_name='GuitarStaff',
                    name='Guitar Staff',
                    ),
                scoretools.Context(
                    context_name='Dynamics',
                    name='Guitar Pedals',
                    ),
                ],
            context_name='GuitarStaffGroup',
            name='Guitar Staff Group',
            )

        piano_staff_group = scoretools.StaffGroup(
            [
                scoretools.Staff(
                    [
                        scoretools.Voice(
                            name='Piano RH Voice',
                            ),
                        ],
                    context_name='PianoUpperStaff',
                    name='Piano Upper Staff',
                    ),
                scoretools.Voice(
                    context_name='Dynamics',
                    name='Piano Dynamics',
                    ),
                scoretools.Staff(
                    [
                        scoretools.Voice(
                            name='Piano LH Voice',
                            ),
                        ],
                    context_name='PianoLowerStaff',
                    name='Piano Lower Staff',
                    ),
                scoretools.Voice(
                    context_name='Dynamics',
                    name='Piano Pedals',
                    ),
                ],
            context_name='PianoStaffGroup',
            name='Piano Staff Group',
            )

        percussion_staff_group = scoretools.StaffGroup(
            [
                scoretools.Staff(
                    [
                        scoretools.Voice(
                            name='Percussion Voice',
                            ),
                        ],
                    context_name='PercussionStaff',
                    name='Percussion Staff',
                    ),
                ],
            context_name='PercussionStaffGroup',
            name='Percussion Staff Group',
            )

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

        score['Piano Upper Staff'].is_simultaneous = True
        score['Piano Lower Staff'].is_simultaneous = True

        attach(indicatortools.Clef('treble_8'),
            score['Guitar Staff'])
        attach(indicatortools.Clef('bass'),
            score['Saxophone Staff'])
        attach(indicatortools.Clef('percussion'),
            score['Percussion Staff'])

        return score
