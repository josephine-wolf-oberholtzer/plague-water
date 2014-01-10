# -*- encoding: utf-8 -*-
from abjad import *


time_signature_inventories = datastructuretools.TypedTuple(
    tokens=[
        [
            (5, 16),
            (7, 16),
            (2, 4),
            (4, 8),
            (5, 8),
            (3, 4),
            (6, 8),
            ],
        [
            (3, 4),
            (3, 8),
            (6, 8),
            (9, 16),
            ],
        [
            (2, 4),
            (4, 16),
            (4, 8),
            ],
        [
            (5, 16),
            (5, 8),
            (7, 16),
            ],
        [
            (1, 8),
            (3, 4),
            (4, 4),
            ],
        ],
    item_class=indicatortools.TimeSignatureInventory,
    )

__all__ = (
    'time_signature_inventories',
    )
