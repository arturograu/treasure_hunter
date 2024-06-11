import 'package:flutter/material.dart';

@visibleForTesting
class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    required this.currentIndex,
    required this.onTap,
    required this.items,
    super.key,
  });

  final int currentIndex;
  final ValueSetter<int> onTap;
  final List<BottomNavigationBarItem> items;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: currentIndex,
      onTap: onTap,
      items: items,
    );
  }
}
