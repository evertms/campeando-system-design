import 'package:flutter/material.dart';

/// A widget that limits the maximum width of its child to provide a consistent
/// layout on large screens (Web/Desktop).
class AdaptiveLayout extends StatelessWidget {
  const AdaptiveLayout({
    super.key,
    required this.child,
    this.maxWidth = 1200,
  });

  final Widget child;
  final double maxWidth;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: maxWidth),
        child: child,
      ),
    );
  }
}

/// A standard page scaffold that supports [CustomScrollView] for Material 3
/// large app bars and efficient list rendering.
class AdaptivePageScaffold extends StatelessWidget {
  const AdaptivePageScaffold({
    super.key,
    required this.title,
    required this.slivers,
    this.floatingActionButton,
    this.actions,
  });

  final String title;
  final List<Widget> slivers;
  final Widget? floatingActionButton;
  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: floatingActionButton,
      body: AdaptiveLayout(
        child: CustomScrollView(
          slivers: [
            SliverAppBar.large(
              title: Text(title),
              actions: actions,
            ),
            ...slivers,
          ],
        ),
      ),
    );
  }
}
