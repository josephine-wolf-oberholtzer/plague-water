# -*- encoding: utf-8 -*-
import collections
from abjad import attach
from abjad.tools import abctools
from abjad.tools import instrumenttools
from abjad.tools import scoretools


class PlagueWaterScoreTemplate(abctools.AbjadObject):

    ### INITIALIZER ###

    def __init__(self):
        self.context_name_abbreviations = collections.OrderedDict()

    ### PRIVATE METHODS ###

    ### SPECIAL METHODS ###

    def __call__(self):

        guitar_staff_group = scoretools.StaffGroup(
            [
                scoretools.RhythmicStaff(
                    [
                        scoretools.Voice(
                            name='Guitar Voice',
                            ),
                        ],
                    name='Guitar Staff',
                    ),
                scoretools.Context(
                    context_name='Dynamics',
                    name='Guitar Pedals',
                    ),
                ],
            name='Guitar Staff Group',
            )

        percussion_staff_group = scoretools.StaffGroup(
            [
                scoretools.RhythmicStaff(
                    [
                        scoretools.Voice(
                            name='Percussion Voice One',
                            ),
                        ],
                    name='Percussion Shaker Staff',
                    ),
                scoretools.RhythmicStaff(
                    [
                        scoretools.Voice(
                            name='Percussion Voice Two',
                            ),
                        ],
                    name='Percussion Drum Staff',
                    ),
                scoretools.RhythmicStaff([],
                    name='Percussion Bass Drum Staff',
                    ),
                ],
            name='Percussion Staff Group',
            )

        piano_staff_group = scoretools.PianoStaff(
            [
                scoretools.RhythmicStaff(
                    [
                        scoretools.Voice(
                            name='Piano Right-hand',
                            ),
                        ],
                    name='Piano Upper Staff',
                    ),
                scoretools.Context(
                    context_name='Dynamics',
                    name='Piano Dynamics',
                    ),
                scoretools.RhythmicStaff(
                    [
                        scoretools.Voice(
                            name='Piano Left-hand',
                            ),
                        ],
                    name='Piano Lower Staff',
                    ),
                scoretools.Context(
                    context_name='Dynamics',
                    name='Piano Pedals',
                    ),
                ],
            name='Piano Staff Group',
            )

        saxophone_staff_group = scoretools.StaffGroup(
            [
                scoretools.RhythmicStaff(
                    [
                        scoretools.Voice(
                            name='Saxophone Voice',
                            ),
                        ],
                    name='Saxophone Staff',
                    ),
                ],
            name='Saxophone Staff Group',
            )

        time_signature_context = scoretools.Context(
            name='TimeSignatureContext',
            context_name='TimeSignatureContext',
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

        return score
