import 'package:flutter/material.dart';
import 'package:treasure_hunter/l10n/l10n.dart';

class TreasuresCollection extends StatelessWidget {
  const TreasuresCollection({super.key});

  static Page<dynamic> page() =>
      const MaterialPage<void>(child: TreasuresCollection());

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.treasuresCollectionPageTitle),
      ),
      body: const Center(
        child: Text('Installations Page'),
      ),
    );
  }
}
