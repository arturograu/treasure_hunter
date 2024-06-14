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
        leading: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.favorite_rounded),
            SizedBox(width: 4),
            _FavouriteTreasuresCounter(),
          ],
        ),
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

class _FavouriteTreasuresCounter extends StatelessWidget {
  const _FavouriteTreasuresCounter();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppState>(
      builder: (context, state) {
        return Text(
          state.userFavouriteTreasures.length.toString(),
          textAlign: TextAlign.center,
        );
      },
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
              Initial() => const Text(
                  'Press the button to start the hunt!',
                  style: TextStyle(fontSize: 18),
                ),
              Searching() => const Text('Searching for treasures...'),
              NoTreasuresFound() => const Text('No treasures found!'),
              TreasureFound(:final treasure) => _TreasureFoundView(
                  name: treasure.name,
                  description: treasure.description,
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

class _TreasureFoundView extends StatelessWidget {
  const _TreasureFoundView({
    required this.name,
    required this.description,
  });

  final String name;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 16),
        Text(
          name,
          style: const TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
        Text(
          description,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 16),
        const _CollectTreasureButton(),
      ],
    );
  }
}

class _CollectTreasureButton extends StatelessWidget {
  const _CollectTreasureButton();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BlocBuilder<TreasureHuntCubit, TreasureHuntState>(
      buildWhen: (previous, current) =>
          previous is TreasureFound &&
          current is TreasureFound &&
          previous.isCollectingTreasure != current.isCollectingTreasure,
      builder: (context, state) {
        return switch (state) {
          TreasureFound(
            :final isCollectingTreasure,
            :final treasure,
          ) =>
            ElevatedButton.icon(
              onPressed: () => isCollectingTreasure
                  ? null
                  : context
                      .read<TreasureHuntCubit>()
                      .collectTreasure(treasure.id),
              style: ElevatedButton.styleFrom(
                backgroundColor: theme.primaryColor,
              ),
              icon: isCollectingTreasure
                  ? null
                  : const Icon(
                      Icons.inventory_2_rounded,
                      color: Colors.white,
                    ),
              label: isCollectingTreasure
                  ? const AppButtonCircularProgressIndicator(
                      color: Colors.white,
                    )
                  : const Text(
                      'Collect',
                      style: TextStyle(color: Colors.white),
                    ),
            ),
          _ => const SizedBox.shrink(),
        };
      },
    );
  }
}
