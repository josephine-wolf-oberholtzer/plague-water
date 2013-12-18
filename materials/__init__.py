# -*- encoding: utf-8 -*-


def import_materials(namespace):
    import importlib
    import os
    import types
    from plague_water import plague_water_configuration
    outer_path = os.path.split(
        plague_water_configuration.score_directory_path)[0]
    materials_directory_path = os.path.split(__file__)[0]
    for directory_name in os.listdir(materials_directory_path):
        directory_path = os.path.join(materials_directory_path, directory_name)
        if not os.path.isdir(directory_path):
            continue
        output_material_path = os.path.join(
            directory_path,
            'output_material.py',
            )
        material_definition_path = os.path.join(
            directory_path,
            'material_definition.py',
            )
        if os.path.exists(output_material_path):
            relative_path = os.path.relpath(
                output_material_path, outer_path)
        elif os.path.exists(material_definition_path):
            relative_path = os.path.relpath(
                material_definition_path, outer_path)
        else:
            continue
        module_path = os.path.splitext(relative_path)[0].replace(
            os.sep, '.')
        module = importlib.import_module(module_path)
        del namespace[directory_name]
        for key, value in sorted(vars(module).items()):
            if key.startswith('_'):
                continue
            elif isinstance(value,
                (types.BuiltinFunctionType, types.ModuleType)):
                continue
            elif isinstance(value, (types.TypeType, types.FunctionType)) and \
                value.__module__ != module_path:
                continue
            namespace[key] = value
    if 'abjad_configuration' in namespace:
        del namespace['abjad_configuration']

import_materials(globals())
del import_materials
