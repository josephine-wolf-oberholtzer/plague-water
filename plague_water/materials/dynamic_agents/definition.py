# -*- encoding: utf-8 -*-
from abjad.tools import indicatortools
from plague_water import makers


background_dynamic_agent = makers.DynamicAgent(
    initial_dynamic_expressions=(
        makers.DynamicExpression(
            hairpin_start_token='p',
            hairpin_stop_token='o',
            ),
        ),
    cyclic_dynamic_expressions=(
        makers.DynamicExpression(
            hairpin_start_token='pp',
            hairpin_stop_token='p',
            ),
        makers.DynamicExpression(
            hairpin_start_token='p',
            hairpin_stop_token='mf',
            ),
        makers.DynamicExpression(
            hairpin_start_token='pp',
            hairpin_stop_token='o',
            ),
        makers.DynamicExpression(
            hairpin_start_token='mp',
            hairpin_stop_token='pp',
            ),
        makers.DynamicExpression(
            hairpin_start_token='o',
            hairpin_stop_token='p',
            ),
        ),
    )


midground_dynamic_agent = makers.DynamicAgent(
    initial_dynamic_expressions=(
        makers.DynamicExpression(
            hairpin_start_token='mp',
            hairpin_stop_token='f',
            ),
        ),
    cyclic_dynamic_expressions=(
        makers.DynamicExpression(
            hairpin_start_token='mp',
            hairpin_stop_token='p',
            ),
        makers.DynamicExpression(
            hairpin_start_token='sfp',
            hairpin_stop_token='o',
            ),
        makers.DynamicExpression(
            hairpin_start_token='p',
            hairpin_stop_token='f',
            ),
        ),
    )

foreground_dynamic_agent = makers.DynamicAgent(
    initial_dynamic_expressions=(
        makers.DynamicExpression(
            hairpin_start_token='sfz',
            ),
        ),
    cyclic_dynamic_expressions=(
        makers.DynamicExpression(
            hairpin_start_token='f',
            ),
        makers.DynamicExpression(
            hairpin_start_token='ff',
            hairpin_stop_token='mf',
            ),
        makers.DynamicExpression(
            hairpin_start_token='sfz',
            hairpin_stop_token='ff',
            ),
        ),
    )


__all__ = (
    'background_dynamic_agent',
    'midground_dynamic_agent',
    'foreground_dynamic_agent',
    )
