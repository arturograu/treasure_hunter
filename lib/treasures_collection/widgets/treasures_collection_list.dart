import 'package:flutter/material.dart';
import 'package:treasures_repository/treasures_repository.dart';

class TreasuresCollectionList extends StatelessWidget {
  const TreasuresCollectionList({
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
      itemBuilder: (context, index) => ListTile(
        key: Key('treasuresList_tile_$index'),
        title: Text(_treasures[index].name),
        subtitle: Text(_treasures[index].description),
      ),
    );
  }
}
