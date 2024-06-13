import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:treasure_hunter/collected_treasures/collected_treasures.dart';
import 'package:treasures_repository/treasures_repository.dart';

class CollectedTreasuresList extends StatelessWidget {
  const CollectedTreasuresList({
    required List<Treasure> treasures,
    super.key,
  }) : _treasures = treasures;

  final List<Treasure> _treasures;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: _treasures.length,
      separatorBuilder: (context, index) => Container(
        key: const Key('treasuresList_separator'),
        height: 1,
        color: Colors.grey.withOpacity(0.5),
      ),
      itemBuilder: (context, index) => _Item(
        key: Key('treasuresList_tile_$index'),
        id: _treasures[index].id,
      ),
    );
  }
}

class _Item extends StatelessWidget {
  const _Item({
    required this.id,
    super.key,
  });

  final String id;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CollectedTreasuresBloc, CollectedTreasuresState>(
      buildWhen: (previous, current) =>
          previous.pendingFavouriteAdditions.contains(id) !=
              current.pendingFavouriteAdditions.contains(id) ||
          previous.pendingFavouriteDeletions.contains(id) !=
              current.pendingFavouriteDeletions.contains(id),
      builder: (context, state) {
        final item = state.allCollectedTreasures[id];

        if (item == null) {
          return const Text('Treasure id not found');
        }

        final isFavorite = state.favouriteTreasures.contains(id);
        final isLoading = state.pendingFavouriteAdditions.contains(id) ||
            state.pendingFavouriteDeletions.contains(id);

        return ListTile(
          title: Text(item.name),
          subtitle: Text(item.description),
          trailing: isLoading
              ? const AppButtonCircularProgressIndicator()
              : IconButton(
                  icon: Icon(
                    isFavorite ? Icons.favorite : Icons.favorite_border,
                    color: isFavorite ? Colors.red : null,
                  ),
                  onPressed: () => context.read<CollectedTreasuresBloc>().add(
                        CollectedTreasuresEvent.treasureFavouriteStatusChanged(
                          id,
                        ),
                      ),
                ),
        );
      },
    );
  }
}
