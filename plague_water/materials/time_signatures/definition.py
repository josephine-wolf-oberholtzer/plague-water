# -*- encoding: utf-8 -*-
from abjad.tools import indicatortools


mixed_time_signatures = indicatortools.TimeSignatureInventory(
    [
        (5, 16),
        (7, 16),
        (2, 4),
        (4, 8),
        (5, 8),
        (3, 4),
        (6, 8),
        ],
    )

prime_time_signatures = indicatortools.TimeSignatureInventory(
    [
        (3, 16),
        (5, 16),
        (5, 8),
        (7, 16),
        (7, 8),
        (11, 16),
        ],
    )

quick_time_signatures = indicatortools.TimeSignatureInventory(
    [
        (3, 16),
        (2, 8),
        (5, 16),
        (2, 4),
        (4, 8),
        (5, 8),
        ],
    )

round_time_signatures = indicatortools.TimeSignatureInventory(
    [
        (3, 4),
        (6, 16),
        (3, 8),
        (6, 8),
        (9, 16),
        ],
    )

square_time_signatures = indicatortools.TimeSignatureInventory(
    [
        (2, 8),
        (2, 4),
        (4, 16),
        (4, 8),
        (4, 4),
        ],
    )

__all__ = (
    'mixed_time_signatures',
    'prime_time_signatures',
    'quick_time_signatures',
    'round_time_signatures',
    'square_time_signatures',
    )
