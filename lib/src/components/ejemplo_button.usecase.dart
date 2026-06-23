import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

import 'ejemplo_button.dart';

@widgetbook.UseCase(
  name: 'Default',
  type: EjemploButton,
)
Widget buildEjemploButtonDefaultUseCase(BuildContext context) {
  return Scaffold(
    body: Center(
      child: EjemploButton(
        text: 'Presióname',
        onPressed: () {
          debugPrint('Botón presionado');
        },
      ),
    ),
  );
}

@widgetbook.UseCase(
  name: 'Disabled',
  type: EjemploButton,
)
Widget buildEjemploButtonDisabledUseCase(BuildContext context) {
  return const Scaffold(
    body: Center(
      child: EjemploButton(
        text: 'Deshabilitado',
        onPressed: null,
      ),
    ),
  );
}
