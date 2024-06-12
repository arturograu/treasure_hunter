import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:treasure_hunter/app/cubit/app_cubit.dart';
import 'package:treasure_hunter/l10n/l10n.dart';
import 'package:treasure_hunter/treasure_hunt/teasure_hunt.dart';
import 'package:treasures_repository/treasures_repository.dart';
import 'package:user_repository/user_repository.dart';

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
            userRepository: context.read<UserRepository>(),
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: _TreasureHuntView(),
          ),
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
        final theme = Theme.of(context);
        return Column(
          children: [
            const Spacer(),
            switch (state) {
              Initial() => const Text(
                  'Press the button to start the hunt!',
                  style: TextStyle(fontSize: 18),
                ),
              Searching() => const Text('Searching for treasures...'),
              NoTreasuresFound() => const Text('No treasures found!'),
              TreasureFound(
                :final treasure,
                :final isCollectingTreasure,
              ) =>
                Column(
                  children: [
                    const SizedBox(height: 16),
                    Text(
                      treasure.name,
                      style: const TextStyle(fontSize: 18),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      treasure.description,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 16),
                    ElevatedButton.icon(
                      onPressed: () => isCollectingTreasure
                          ? null
                          : context
                              .read<TreasureHuntCubit>()
                              .collectTreasure(treasure.id),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: theme.primaryColor,
                      ),
                      icon: const Icon(
                        Icons.add_rounded,
                        color: Colors.white,
                      ),
                      label: Text(
                        isCollectingTreasure ? 'Collecting...' : 'Collect',
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
            },
            const Spacer(),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () =>
                    context.read<TreasureHuntCubit>().searchForTreasure(),
                child: state is Searching
                    ? const AppButtonCircularProgressIndicator()
                    : Text(l10n.searchForTreasuresButtonText),
              ),
            ),
            const SizedBox(height: 16),
          ],
        );
      },
    );
  }
}
