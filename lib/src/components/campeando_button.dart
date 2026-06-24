import 'package:flutter/material.dart';

enum CampeandoButtonVariant {
  primary,
  secondary,
  tertiary,
}

class CampeandoButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final CampeandoButtonVariant variant;

  const CampeandoButton({
    super.key,
    required this.text,
    this.onPressed,
    this.variant = CampeandoButtonVariant.primary,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    Color backgroundColor;
    Color foregroundColor;

    switch (variant) {
      case CampeandoButtonVariant.primary:
        backgroundColor = colorScheme.primary;
        foregroundColor = colorScheme.onPrimary; // Generalmente blanco o claro
        break;
      case CampeandoButtonVariant.secondary:
        backgroundColor = colorScheme.secondaryContainer;
        foregroundColor = colorScheme.onSecondaryContainer; // Letras oscuras, fondo claro
        break;
      case CampeandoButtonVariant.tertiary:
        backgroundColor = colorScheme.tertiary;
        foregroundColor = colorScheme.secondary; // Letras con el color secundario
        break;
    }

    return FilledButton(
      onPressed: onPressed,
      style: FilledButton.styleFrom(
        backgroundColor: backgroundColor,
        foregroundColor: foregroundColor,
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Text(
        text,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }
}
