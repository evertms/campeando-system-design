// dart format width=80
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_import, prefer_relative_imports, directives_ordering

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AppGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:campeando_system_design/src/components/ejemplo_button.usecase.dart'
    as _campeando_system_design_src_components_ejemplo_button_usecase;
import 'package:widgetbook/widgetbook.dart' as _widgetbook;

final directories = <_widgetbook.WidgetbookNode>[
  _widgetbook.WidgetbookFolder(
    name: 'components',
    children: [
      _widgetbook.WidgetbookComponent(
        name: 'EjemploButton',
        useCases: [
          _widgetbook.WidgetbookUseCase(
            name: 'Default',
            builder:
                _campeando_system_design_src_components_ejemplo_button_usecase
                    .buildEjemploButtonDefaultUseCase,
          ),
          _widgetbook.WidgetbookUseCase(
            name: 'Disabled',
            builder:
                _campeando_system_design_src_components_ejemplo_button_usecase
                    .buildEjemploButtonDisabledUseCase,
          ),
        ],
      ),
    ],
  ),
];
