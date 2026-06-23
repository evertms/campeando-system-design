import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

import 'campeando_button.dart';

@widgetbook.UseCase(
  name: 'Primary',
  type: CampeandoButton,
)
Widget buildCampeandoButtonPrimaryUseCase(BuildContext context) {
  return Scaffold(
    body: Center(
      child: CampeandoButton(
        text: 'Botón Primario',
        variant: CampeandoButtonVariant.primary,
        onPressed: () {},
      ),
    ),
  );
}

@widgetbook.UseCase(
  name: 'Secondary',
  type: CampeandoButton,
)
Widget buildCampeandoButtonSecondaryUseCase(BuildContext context) {
  return Scaffold(
    body: Center(
      child: CampeandoButton(
        text: 'Botón Secundario',
        variant: CampeandoButtonVariant.secondary,
        onPressed: () {},
      ),
    ),
  );
}

@widgetbook.UseCase(
  name: 'Tertiary',
  type: CampeandoButton,
)
Widget buildCampeandoButtonTertiaryUseCase(BuildContext context) {
  return Scaffold(
    body: Center(
      child: CampeandoButton(
        text: 'Botón Terciario',
        variant: CampeandoButtonVariant.tertiary,
        onPressed: () {},
      ),
    ),
  );
}

@widgetbook.UseCase(
  name: 'Disabled',
  type: CampeandoButton,
)
Widget buildCampeandoButtonDisabledUseCase(BuildContext context) {
  return const Scaffold(
    body: Center(
      child: CampeandoButton(
        text: 'Botón Deshabilitado',
        onPressed: null,
      ),
    ),
  );
}
