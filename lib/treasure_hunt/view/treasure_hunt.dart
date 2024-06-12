import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:treasure_hunter/app/cubit/app_cubit.dart';
import 'package:treasure_hunter/l10n/l10n.dart';
import 'package:treasure_hunter/treasure_hunt/teasure_hunt.dart';
import 'package:treasures_repository/treasures_repository.dart';

class TreasureHunt extends StatelessWidget {
  const TreasureHunt({super.key});

  static Page<dynamic> page() =>
      const MaterialPage<void>(child: TreasureHunt());

  @override
  Widget build(BuildContext context) {
    final appState = context.read<AppCubit>().state;
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome ${appState.user.name}!'),
      ),
      body: SizedBox(
        width: double.infinity,
        child: BlocProvider(
          create: (_) => TreasureHuntCubit(
            treasuresRepository: context.read<TreasuresRepository>(),
          ),
          child: const _TreasureHuntView(),
        ),
      ),
    );
  }
}

class _TreasureHuntView extends StatelessWidget {
  const _TreasureHuntView();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TreasureHuntCubit, TreasureHuntState>(
      builder: (context, state) {
        final l10n = context.l10n;
        return Column(
          children: [
            const Spacer(),
            switch (state) {
              Initial() => const Text('Press the button to start the hunt!'),
              Searching() => const Text('Searching for treasures...'),
              NoTreasuresFound() => const Text('No treasures found!'),
              TreasureFound(:final treasure) => Column(
                  children: [
                    const Text('You found a treasure!'),
                    Text('Treasure: ${treasure.name}'),
                    Text('Location: ${treasure.description}'),
                  ],
                ),
            },
            const Spacer(),
            ElevatedButton(
              onPressed: () =>
                  context.read<TreasureHuntCubit>().searchForTreasure(),
              child: state is Searching
                  ? const AppButtonCircularProgressIndicator()
                  : Text(l10n.searchForTreasuresButtonText),
            ),
            const SizedBox(height: 16),
          ],
        );
      },
    );
  }
}
