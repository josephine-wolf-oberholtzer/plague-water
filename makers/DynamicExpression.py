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
                e'8 \< \sfp
                f'8
                g'8
                a'8 \!
                b'8
                c''8
            }

    ..  container:: example

        ::

            >>> dynamic_expression = makers.DynamicExpression(
            ...     'f', 'p',
            ...     )
            >>> staff = Staff("c'8 d'8 e'8 f'8 g'8 a'8 b'8 c''8")
            >>> dynamic_expression(staff[2:-2])
            >>> print format(staff)
            \new Staff {
                c'8
                d'8
                e'8 \> \f
                f'8
                g'8
                a'8 \p
                b'8
                c''8
            }

    '''

    ### CLASS VARIABLES ###

    __slots__ = (
        '_hairpin_start_token',
        '_hairpin_stop_token',
        '_minimum_duration',
        )

    ### INITIALIZER ###

    def __init__(
        self,
        hairpin_start_token='p',
        hairpin_stop_token=None,
        minimum_duration=Duration(1, 4),
        ):
        lilypond_parser = lilypondparsertools.LilyPondParser
        known_dynamics = list(lilypond_parser.list_known_dynamics())
        known_dynamics.append('o')
        assert hairpin_start_token in known_dynamics
        if hairpin_stop_token is not None:
            assert hairpin_stop_token in known_dynamics
        assert hairpin_start_token != 'o' or hairpin_stop_token != 'o'
        if hairpin_start_token == 'o':
            assert not hairpin_stop_token is None
        self._hairpin_start_token = hairpin_start_token
        self._hairpin_stop_token = hairpin_stop_token
        if minimum_duration is not None:
            minimum_duration = Duration(minimum_duration)
        self._minimum_duration = minimum_duration

    ### SPECIAL METHODS ###

    def __call__(self, group):
        if not isinstance(group, selectiontools.SliceSelection):
            group = selectiontools.SliceSelection(group)
        start_token = self.hairpin_start_token
        stop_token = self.hairpin_stop_token
        is_short_group = False
        if len(group) < 3:
            is_short_group = True
        elif self.minimum_duration is not None:
            if group.get_duration() < self.minimum_duration:
                is_short_group = True
        if is_short_group or stop_token is None:
            if start_token == 'o':
                start_token = stop_token
            command = indicatortools.LilyPondCommand(start_token, 'right')
            attach(command, group[0])
            return
        start_ordinal = NegativeInfinity
        if start_token != 'o':
            start_ordinal = Dynamic.dynamic_name_to_dynamic_ordinal(
                start_token)
        stop_ordinal = NegativeInfinity
        if stop_token != 'o':
            stop_ordinal = Dynamic.dynamic_name_to_dynamic_ordinal(stop_token)
        tokens = []
        is_circled = False
        if start_ordinal < stop_ordinal:
            if start_token != 'o':
                tokens.append(start_token)
            else:
                is_circled = True
            tokens.append('<')
            tokens.append(stop_token)
        elif stop_ordinal < start_ordinal:
            tokens.append(start_token)
            tokens.append('>')
            if stop_token != 'o':
                tokens.append(stop_token)
            else:
                is_circled = True
        hairpin_descriptor = ' '.join(tokens)
        hairpin = Hairpin(
            descriptor=hairpin_descriptor,
            include_rests=False,
            )
        if is_circled:
            override(hairpin).hairpin.circled_tip = True
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
    def minimum_duration(self):
        return self._minimum_duration
