# -*- encoding: utf-8 -*-
from abjad.tools import pitchtools
from plague_water import makers


shaker_pitches = (
    pitchtools.NamedPitch('g'),
    pitchtools.NamedPitch('b'),
    pitchtools.NamedPitch("d'"),
    pitchtools.NamedPitch("f'"),
    )

woodblock_pitches = (
    pitchtools.NamedPitch("f"),
    pitchtools.NamedPitch("a"),
    pitchtools.NamedPitch("c'"),
    pitchtools.NamedPitch("e'"),
    pitchtools.NamedPitch("g'"),
    )

drum_pitches = (
    pitchtools.NamedPitch('a'),
    pitchtools.NamedPitch("c'"),
    pitchtools.NamedPitch("e'"),
    )

shaker_pitch_agent = makers.PercussionPitchAgent(
    pitches=shaker_pitches,
    )

woodblock_pitch_agent = makers.PercussionPitchAgent(
    pitches=woodblock_pitches,
    )

drum_pitch_agent = makers.PercussionPitchAgent(
    pitches=drum_pitches,
    )

__all__ = (
    'drum_pitch_agent',
    'shaker_pitch_agent',
    'woodblock_pitch_agent',
    )
