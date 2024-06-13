import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:treasure_hunter/collected_treasures/collected_treasures.dart';
import 'package:treasures_repository/treasures_repository.dart';

class CollectedTreasuresView extends StatelessWidget {
  const CollectedTreasuresView({
    required this.selectedList,
    super.key,
  });

  final ListType selectedList;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CollectedTreasuresBloc, CollectedTreasuresState>(
      builder: (context, state) => switch (state.status) {
        CollectedTreasuresStatus.initial => const _InitialView(),
        CollectedTreasuresStatus.loading => const _LoadingView(),
        CollectedTreasuresStatus.loaded => _LoadedView(
            selectedList: selectedList,
            allCollectedTreasures: state.allCollectedTreasures,
            favouriteTreasures: state.favouriteTreasures,
          ),
      },
    );
  }
}

class _InitialView extends StatelessWidget {
  const _InitialView();

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Bloc not initialized'));
  }
}

class _LoadingView extends StatelessWidget {
  const _LoadingView();

  @override
  Widget build(BuildContext context) {
    return const Center(child: CircularProgressIndicator());
  }
}

class _LoadedView extends StatelessWidget {
  const _LoadedView({
    required this.selectedList,
    required this.allCollectedTreasures,
    required this.favouriteTreasures,
  });

  final ListType selectedList;
  final Map<String, Treasure> allCollectedTreasures;
  final Set<String> favouriteTreasures;

  @override
  Widget build(BuildContext context) => switch (selectedList) {
        ListType.all => CollectedTreasuresList(
            treasures: allCollectedTreasures.values.toList(),
          ),
        ListType.favourites => CollectedTreasuresList(
            treasures: allCollectedTreasures.values
                .where((treasure) => favouriteTreasures.contains(treasure.id))
                .toList(),
          )
      };
}
