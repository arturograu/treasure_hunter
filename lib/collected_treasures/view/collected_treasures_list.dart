import 'package:flutter/material.dart';
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
        title: Text(_treasures[index].name),
        subtitle: Text(_treasures[index].description),
      ),
    );
  }
}

class _Item extends StatefulWidget {
  const _Item({
    required this.title,
    required this.subtitle,
    super.key,
  });

  final Widget title;
  final Widget subtitle;

  @override
  State<_Item> createState() => __ItemState();
}

class __ItemState extends State<_Item> {
  bool _isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: widget.title,
      subtitle: widget.subtitle,
      leading: IconButton(
        icon: Icon(
          _isFavorite ? Icons.favorite : Icons.favorite_border,
          color: _isFavorite ? Colors.red : null,
        ),
        onPressed: () {
          setState(() {
            _isFavorite = !_isFavorite;
          });
        },
      ),
    );
  }
}
