import 'package:flutter/material.dart';
import 'package:treasure_hunter/l10n/l10n.dart';

class TreasureHunt extends StatelessWidget {
  const TreasureHunt({super.key});

  static Page<dynamic> page() =>
      const MaterialPage<void>(child: TreasureHunt());

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.treasureHuntPageTitle),
      ),
      body: const Center(
        child: Text('Treasure Hunt Page'),
      ),
    );
  }
}
