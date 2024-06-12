import 'package:flutter/material.dart';
import 'package:treasure_hunter/collected_treasures/view/collected_treasures_page.dart';
import 'package:treasure_hunter/home/view/bottom_nav_bar.dart';
import 'package:treasure_hunter/l10n/l10n.dart';
import 'package:treasure_hunter/my_account/my_account.dart';
import 'package:treasure_hunter/treasure_hunt/view/view.dart';

enum HomeTab {
  treasuresCollection,
  treasureHunt,
  myAccount;

  static HomeTab fromIndex(int index) => HomeTab.values[index];

  int get tabIndex => HomeTab.values.indexOf(this);
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  static Page<dynamic> page() => const MaterialPage<void>(child: HomePage());

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HomeTab _selectedTab = HomeTab.treasureHunt;

  void _onItemTapped(int index) {
    setState(() {
      _selectedTab = HomeTab.fromIndex(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Scaffold(
      body: Stack(
        children: HomeTab.values.map(_buildOffstageNavigator).toList(),
      ),
      bottomNavigationBar: BottomNavBar(
        currentIndex: _selectedTab.tabIndex,
        onTap: _onItemTapped,
        items: HomeTab.values.map((tab) {
          return _buildNavigationBarItem(
            isSelected: tab == _selectedTab,
            label: tab.getTranslatedLabel(l10n),
            icon: tab.icon,
            key: ValueKey(tab),
          );
        }).toList(),
      ),
    );
  }

  Widget _buildOffstageNavigator(HomeTab tabItem) {
    return Offstage(
      offstage: _selectedTab != tabItem,
      child: _TabNavigator(
        tabItem: tabItem,
      ),
    );
  }

  BottomNavigationBarItem _buildNavigationBarItem({
    required bool isSelected,
    required String label,
    required IconData icon,
    Key? key,
  }) {
    final theme = Theme.of(context);
    return BottomNavigationBarItem(
      icon: Icon(
        key: key,
        icon,
        color: isSelected
            ? theme.colorScheme.primary
            : theme.colorScheme.onSurface.withOpacity(0.6),
      ),
      label: label,
    );
  }
}

class _TabNavigator extends StatelessWidget {
  const _TabNavigator({required this.tabItem});

  final HomeTab tabItem;

  @override
  Widget build(BuildContext context) {
    return Navigator(
      onPopPage: (route, result) => route.didPop(result),
      pages: switch (tabItem) {
        HomeTab.treasuresCollection => [CollectedTreasures.page()],
        HomeTab.treasureHunt => [TreasureHunt.page()],
        HomeTab.myAccount => [MyAccount.page()],
      },
    );
  }
}

extension on HomeTab {
  String getTranslatedLabel(AppLocalizations l10n) => switch (this) {
        HomeTab.treasuresCollection => l10n.homePageBottomNavigationCollection,
        HomeTab.treasureHunt => l10n.homePageBottomNavigationTreasureHunt,
        HomeTab.myAccount => l10n.homePageBottomNavigationMyAccount,
      };

  IconData get icon => switch (this) {
        HomeTab.treasuresCollection => Icons.category_rounded,
        HomeTab.treasureHunt => Icons.travel_explore_rounded,
        HomeTab.myAccount => Icons.face_rounded,
      };
}
