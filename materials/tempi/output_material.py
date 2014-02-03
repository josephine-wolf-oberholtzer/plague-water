# -*- encoding: utf-8 -*-
from abjad.tools import indicatortools
from abjad.tools import durationtools
tempo_inventory = indicatortools.TempoInventory(
    [
        indicatortools.Tempo(
            durationtools.Duration(1, 4),
            72
            ),
        indicatortools.Tempo(
            durationtools.Duration(1, 4),
            96
            ),
        ]
    )
