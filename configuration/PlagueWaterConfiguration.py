# -*- encoding: utf-8 -*-
import os
from abjad.tools import systemtools


class PlagueWaterConfiguration(systemtools.Configuration):

    ### CLASS VARIABLES ###

    abjad_configuration = systemtools.AbjadConfiguration()

    ### PRIVATE PROPERTIES ###

    @property
    def _initial_comment(self):
        return [
            '-*- coding: utf-8 -*-',
            '',
            'Plague Water configuration file created on {}.'.format(
                self._current_time),
            'This file is interpreted by ConfigObj'
            ' and should follow ini syntax.',
            ]

    @property
    def _option_definitions(self):
        return {}

    ### PUBLIC PROPERTIES ###

    @property
    def configuration_directory_path(self):
        import plague_water
        return plague_water.__path__[0]

    @property
    def configuration_file_name(self):
        return 'plague_water.cfg'

    @property
    def score_directory_path(self):
        return self.configuration_directory_path

    @property
    def stylesheets_directory_path(self):
        return os.path.join(
            self.score_directory_path,
            'stylesheets',
            )

    @property
    def stylesheets_file_paths(self):
        result = []
        for filename in os.listdir(self.stylesheets_directory_path):
            filepath = os.path.join(
                self.stylesheets_directory_path,
                filename,
                )
            result.append(filepath)
        return tuple(result)

