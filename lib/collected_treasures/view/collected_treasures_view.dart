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
      builder: (context, state) => _LoadedView(
        selectedList: selectedList,
        allCollectedTreasures: state.allCollectedTreasures,
        favouriteTreasures: state.favouriteTreasures,
      ),
    );
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
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Offstage(
          offstage: selectedList != ListType.all,
          child: CollectedTreasuresList(
            treasures: allCollectedTreasures.values.toList(),
          ),
        ),
        Offstage(
          offstage: selectedList != ListType.favourites,
          child: CollectedTreasuresList(
            treasures: allCollectedTreasures.values
                .where((treasure) => favouriteTreasures.contains(treasure.id))
                .toList(),
          ),
        ),
      ],
    );
  }
}
