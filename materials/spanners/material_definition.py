# -*- encoding: utf-8 -*-
from abjad import override
from abjad.tools import spannertools

key_glissando_spanner = spannertools.Glissando()
override(key_glissando_spanner).accidental.stencil = False
override(key_glissando_spanner).glissando.bound_details__left__padding = 1.5
override(key_glissando_spanner).glissando.bound_details__right__end_on_accidental = False
override(key_glissando_spanner).glissando.bound_details__right__padding = 1.5
override(key_glissando_spanner).note_head.style = 'cross'
override(key_glissando_spanner).tie.stencil = False

__all__ = (
    'key_glissando_spanner',
    )
