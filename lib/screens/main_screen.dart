import 'package:flutter/material.dart';
import '../theme/app_theme.dart';
import 'tabs/tab1_screen.dart';
import 'tabs/tab2_screen.dart';
import 'tabs/tab3_screen.dart';
import 'tabs/tab4_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = const [
    Tab2Screen(),
    Tab3Screen(),
    Tab1Screen(),
    Tab4Screen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: NavigationBar(
        selectedIndex: _currentIndex,
        onDestinationSelected: (index) => setState(() => _currentIndex = index),
        backgroundColor: AppTheme.surfaceColor,
        indicatorColor: AppTheme.primaryColor.withValues(alpha: 0.2),
        destinations: [
        NavigationDestination(
          icon: const Icon(Icons.check_circle_outline),
          selectedIcon: const Icon(Icons.check_circle, color: AppTheme.primaryColor),
          label: 'Habits',
        ),
        NavigationDestination(
          icon: const Icon(Icons.whatshot_outlined),
          selectedIcon: const Icon(Icons.whatshot, color: AppTheme.primaryColor),
          label: 'Streaks',
        ),
        NavigationDestination(
          icon: const Icon(Icons.edit_note_outlined),
          selectedIcon: const Icon(Icons.edit_note, color: AppTheme.primaryColor),
          label: 'Journal',
        ),
        NavigationDestination(
          icon: const Icon(Icons.auto_graph_outlined),
          selectedIcon: const Icon(Icons.auto_graph, color: AppTheme.primaryColor),
          label: 'Review',
        ),
        ],
      ),
    );
  }
}
