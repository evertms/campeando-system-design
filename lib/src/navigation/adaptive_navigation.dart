import 'package:flutter/material.dart';

/// A navigation skeleton that switches between [NavigationBar] (mobile)
/// and [NavigationRail] (desktop/tablet) based on screen width.
class AdaptiveNavigationScaffold extends StatefulWidget {
  const AdaptiveNavigationScaffold({
    super.key,
    required this.destinations,
    required this.views,
    this.breakpoint = 600,
  }) : assert(destinations.length == views.length);

  final List<NavigationDestinationData> destinations;
  final List<Widget> views;
  final double breakpoint;

  @override
  State<AdaptiveNavigationScaffold> createState() => _AdaptiveNavigationScaffoldState();
}

class _AdaptiveNavigationScaffoldState extends State<AdaptiveNavigationScaffold> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final bool isDesktop = MediaQuery.of(context).size.width >= widget.breakpoint;

    return Scaffold(
      body: Row(
        children: [
          if (isDesktop)
            NavigationRail(
              selectedIndex: _selectedIndex,
              onDestinationSelected: (index) => setState(() => _selectedIndex = index),
              labelType: NavigationRailLabelType.all,
              destinations: widget.destinations
                  .map((d) => NavigationRailDestination(
                        icon: Icon(d.icon),
                        selectedIcon: Icon(d.selectedIcon ?? d.icon),
                        label: Text(d.label),
                      ))
                  .toList(),
            ),
          Expanded(
            child: IndexedStack(
              index: _selectedIndex,
              children: widget.views,
            ),
          ),
        ],
      ),
      bottomNavigationBar: isDesktop
          ? null
          : NavigationBar(
              selectedIndex: _selectedIndex,
              onDestinationSelected: (index) => setState(() => _selectedIndex = index),
              destinations: widget.destinations
                  .map((d) => NavigationDestination(
                        icon: Icon(d.icon),
                        selectedIcon: Icon(d.selectedIcon ?? d.icon),
                        label: d.label,
                      ))
                  .toList(),
            ),
    );
  }
}

/// Data class for navigation destinations.
class NavigationDestinationData {
  const NavigationDestinationData({
    required this.icon,
    required this.label,
    this.selectedIcon,
  });

  final IconData icon;
  final IconData? selectedIcon;
  final String label;
}
