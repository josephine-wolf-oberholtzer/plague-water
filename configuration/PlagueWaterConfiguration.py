# -*- encoding: utf-8 -*-
import os
from abjad.tools import systemtools


class PlagueWaterConfiguration(systemtools.Configuration):

    ### CLASS VARIABLES ###

    abjad_configuration = systemtools.AbjadConfiguration()

    ### PUBLIC METHODS ###

    def debug(self, message):
        if self['debug']:
            print(message)

    ### PRIVATE METHODS ###

    def _get_option_definitions(self):
        options = {
            'debug': {
                'comment': [
                    '',
                    'Print diagnostic information when True.',
                    ],
                'spec': 'boolean(default=True)',
                },
            }
        return options

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

    ### PUBLIC PROPERTIES ###

    @property
    def configuration_directory(self):
        import plague_water
        return plague_water.__path__[0]

    @property
    def configuration_file_name(self):
        return 'plague_water.cfg'

    @property
    def score_directory(self):
        return self.configuration_directory

    @property
    def stylesheets_directory(self):
        return os.path.join(
            self.score_directory,
            'stylesheets',
            )

    @property
    def stylesheets_file_paths(self):
        result = []
        file_names = list(os.listdir(self.stylesheets_directory))
        file_names.sort()
        for file_name in file_names:
            file_path = os.path.join(
                self.stylesheets_directory,
                file_name,
                )
            result.append(file_path)
        return tuple(result)
