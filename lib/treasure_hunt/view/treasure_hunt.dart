import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:treasure_hunter/app/cubit/app_cubit.dart';
import 'package:treasure_hunter/l10n/l10n.dart';

class TreasureHunt extends StatelessWidget {
  const TreasureHunt({super.key});

  static Page<dynamic> page() =>
      const MaterialPage<void>(child: TreasureHunt());

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final appState = context.read<AppCubit>().state;
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome ${appState.user.name}!'),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            const Spacer(),
            const Icon(Icons.map_rounded, size: 100),
            const Spacer(),
            ElevatedButton(
              onPressed: () {},
              child: Text(l10n.searchForTreasuresButtonText),
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
