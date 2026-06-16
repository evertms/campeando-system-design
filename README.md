# Campeando Design System

Un sistema de diseño robusto, adaptativo y basado estrictamente en **Material 3**, construido como un paquete de Flutter independiente para ser consumido por múltiples aplicaciones.

## 🚀 Características Principales

- **Material 3 Nativo:** Aprovecha al máximo el motor de `ThemeData` para evitar wrappers redundantes.
- **Arquitectura de Librería:** Estructura modular con exportación mediante barrel file (`design_system.dart`).
- **Adaptabilidad Integrada:** Layouts dinámicos que responden al tamaño de pantalla (Mobile, Tablet, Desktop).
- **Git Flow:** Gestión de ramas consistente para un desarrollo profesional.

## 📂 Estructura del Proyecto

```text
lib/
├── design_system.dart          # Barrel file (Punto de entrada único)
└── src/
    ├── theme/
    │   └── app_theme.dart      # Configuración central de ThemeData y ColorScheme
    ├── layout/
    │   └── adaptive_layout.dart # Contenedores con MaxWidth y soporte para Slivers
    ├── navigation/
    │   └── adaptive_navigation.dart # Switch dinámico NavigationBar <-> NavigationRail
    └── components/             # Espacio para componentes personalizados (si fuesen necesarios)
```

## 🎨 Núcleo Visual (Material 3)

### Paleta de Colores
El sistema utiliza una semilla de color principal para generar un `ColorScheme` armónico:
- **Primary (Seed):** `#344E41` (Verde oscuro)
- **Secondary:** `#3A5A40`
- **Surface:** `#DAD7CD`

### Tipografía
Implementación estricta de las 15 escalas de M3 (Display, Headline, Title, Body, Label) configuradas globalmente en el `TextTheme`.

### Componentes Globales
Configurados directamente en `ThemeData` para asegurar consistencia sin código extra:
- **Buttons:** `FilledButton`, `OutlinedButton`, `TextButton` y `FAB` con bordes redondeados de 12px/16px.
- **Inputs:** `InputDecoration` con bordes de línea por defecto y estados de error/enfoque definidos.
- **Cards:** Mapeadas a `surfaceContainerHighest` para un look moderno y limpio.

## 📱 Adaptabilidad

El sistema resuelve la navegación y el layout de forma automática:
- **`AdaptiveLayout`:** Centra y limita el ancho del contenido en pantallas grandes (Web/Desktop).
- **`AdaptiveNavigationScaffold`:** Cambia entre `NavigationBar` (Móvil) y `NavigationRail` (Desktop) basándose en un breakpoint de 600px.
- **Slivers:** Soporte nativo para `SliverAppBar.large` y scroll eficiente.

## 🛠️ Instalación y Uso

1. Importa el paquete en tu proyecto.
2. Configura el tema en tu `MaterialApp`:

```dart
import 'package:campeando_system_design/design_system.dart';

MaterialApp(
  theme: AppTheme.lightTheme,
  home: const MyAdaptivePage(),
);
```

## ✅ Estado del Proyecto

- [x] Configuración inicial de Git Flow (Ramas main/develop).
- [x] Limpieza de archivos de aplicación y estructura de librería.
- [x] Implementación de `AppTheme` con Material 3.
- [x] Widgets de Layout y Navegación Adaptativa.
- [x] Verificación de compilación (`flutter analyze` limpio).
