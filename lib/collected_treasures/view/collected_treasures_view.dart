import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:treasure_hunter/collected_treasures/collected_treasures.dart';

class CollectedTreasuresView extends StatelessWidget {
  const CollectedTreasuresView({
    required this.selectedListController,
    super.key,
  });

  final ValueNotifier<ListType> selectedListController;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: selectedListController,
      builder: (context, selectedType, widget) {
        return Stack(
          children: [
            Offstage(
              offstage: selectedType != ListType.all,
              child: const _AllTreasuresList(),
            ),
            Offstage(
              offstage: selectedType != ListType.favourites,
              child: const _FavouritesList(),
            ),
          ],
        );
      },
    );
  }
}

class _AllTreasuresList extends StatelessWidget {
  const _AllTreasuresList();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CollectedTreasuresBloc, CollectedTreasuresState>(
      builder: (context, state) {
        return CollectedTreasuresList(
          key: const Key('all_list'),
          treasures: state.allCollectedTreasures.values.toList(),
        );
      },
    );
  }
}

class _FavouritesList extends StatelessWidget {
  const _FavouritesList();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CollectedTreasuresBloc, CollectedTreasuresState>(
      builder: (context, state) {
        return CollectedTreasuresList(
          key: const Key('favourites_list'),
          treasures: state.allCollectedTreasures.values
              .where(
                (treasure) => state.favouriteTreasures.contains(treasure.id),
              )
              .toList(),
        );
      },
    );
  }
}
