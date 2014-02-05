# -*- encoding: utf-8 -*-
from abjad import *
from plague_water.makers.PlagueWaterObject import PlagueWaterObject


class DynamicExpression(PlagueWaterObject):
    r'''A dynamic expression.

    ..  container:: example

        ::

            >>> from plague_water import makers
            >>> dynamic_expression = makers.DynamicExpression(
            ...     hairpin_start_token='sfp',
            ...     )

        ::

            >>> staff = Staff("c'8 d'8 e'8 f'8 g'8 a'8 b'8 c''8")
            >>> dynamic_expression(staff[2:-2])
            >>> print format(staff)
            \new Staff {
                c'8
                d'8
                \override Hairpin #'stencil = #constante-hairpin
                e'8 \< \sfp
                f'8
                g'8
                a'8 \!
                \revert Hairpin #'stencil
                b'8
                c''8
            }

    ..  container:: example

        ::

            >>> dynamic_expression = makers.DynamicExpression(
            ...     'f', 'p', 'flared',
            ...     )
            >>> staff = Staff("c'8 d'8 e'8 f'8 g'8 a'8 b'8 c''8")
            >>> dynamic_expression(staff[2:-2])
            >>> print format(staff)
            \new Staff {
                c'8
                d'8
                \override Hairpin #'stencil = #flared-hairpin
                e'8 \> \f
                f'8
                g'8
                a'8 \p
                \revert Hairpin #'stencil
                b'8
                c''8
            }

    '''

    ### CLASS VARIABLES ###

    __slots__ = (
        '_hairpin_start_token',
        '_hairpin_stop_token',
        '_hairpin_style',
        '_minimum_duration',
        )

    ### INITIALIZER ###

    def __init__(
        self,
        hairpin_start_token='p',
        hairpin_stop_token=None,
        hairpin_style=None,
        minimum_duration=None,
        ):
        lilypond_parser = lilypondparsertools.LilyPondParser
        known_dynamics = lilypond_parser.list_known_dynamics()
        assert hairpin_start_token in known_dynamics
        if hairpin_stop_token is not None:
            assert hairpin_stop_token in known_dynamics
        assert hairpin_style in (None, 'constante', 'flared')
        self._hairpin_start_token = hairpin_start_token
        self._hairpin_stop_token = hairpin_stop_token
        self._hairpin_style = hairpin_style
        if minimum_duration is not None:
            minimum_duration = Duration(minimum_duration)
        self._minimum_duration = minimum_duration

    ### SPECIAL METHODS ###

    def __call__(self, group):
        if not isinstance(group, selectiontools.SliceSelection):
            group = selectiontools.SliceSelection(group)
        is_short_group = False
        if len(group) == 1:
            is_short_group = True
        elif self.minimum_duration is not None:
            if group.get_duration() < self.minimum_duration:
                is_short_group = True
        if is_short_group:
            start_dynamic = self.hairpin_start_token
            command = indicatortools.LilyPondCommand(start_dynamic, 'right')
            attach(command, group[0])
        else:
            hairpin_start_token = self.hairpin_start_token
            hairpin_stop_token = '!'
            hairpin_shape_token = None
            hairpin_style = self.hairpin_style
            if self.hairpin_stop_token not in (None, '!'):
                start_ordinal = Dynamic.dynamic_name_to_dynamic_ordinal(
                    self.hairpin_start_token)
                stop_ordinal = Dynamic.dynamic_name_to_dynamic_ordinal(
                    self.hairpin_stop_token)
                if start_ordinal < stop_ordinal:
                    hairpin_shape_token = '<'
                    hairpin_stop_token = self.hairpin_stop_token
                elif stop_ordinal < start_ordinal:
                    hairpin_shape_token = '>'
                    hairpin_stop_token = self.hairpin_stop_token
            if hairpin_shape_token is None and hairpin_stop_token == '!':
                hairpin_shape_token = '<'
                hairpin_style = 'constante'
            elif hairpin_style == 'constante':
                hairpin_shape_token = '<'
            hairpin_descriptor = '{} {} {}'.format(
                hairpin_start_token,
                hairpin_shape_token,
                hairpin_stop_token,
                )
            hairpin = Hairpin(
                descriptor=hairpin_descriptor,
                include_rests=False,
                )
            if hairpin_style is not None:
                hairpin_style_name = '{}-hairpin'.format(hairpin_style)
                override(hairpin).hairpin.stencil = schemetools.Scheme(
                    hairpin_style_name,
                    )
            attach(hairpin, group)

    ### PUBLIC PROPERTIES ###

    @property
    def hairpin_start_token(self):
        return self._hairpin_start_token

    @property
    def hairpin_stop_token(self):
        return self._hairpin_stop_token

    @property
    def hairpin_shape(self):
        return None

    @property
    def hairpin_style(self):
        return self._hairpin_style

    @property
    def minimum_duration(self):
        return self._minimum_duration
