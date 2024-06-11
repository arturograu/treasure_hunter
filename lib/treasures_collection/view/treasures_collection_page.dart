import 'package:flutter/material.dart';
import 'package:treasure_hunter/l10n/l10n.dart';
import 'package:treasure_hunter/treasures_collection/widgets/treasures_collection_list.dart';
import 'package:treasures_repository/treasures_repository.dart';

const _treasuresMock = <Treasure>[
  Treasure(
    id: '1',
    name: 'Treasure 1',
    description: 'Treasure 1 description',
  ),
  Treasure(
    id: '2',
    name: 'Treasure 2',
    description: 'Treasure 2 description',
  ),
  Treasure(
    id: '3',
    name: 'Treasure 3',
    description: 'Treasure 3 description',
  ),
];

const _favouriteTreasuresMock = <Treasure>[
  Treasure(
    id: '1',
    name: 'Treasure 1',
    description: 'Treasure 1 description',
  ),
  Treasure(
    id: '3',
    name: 'Treasure 3',
    description: 'Treasure 3 description',
  ),
];

enum _ListType { all, favourites }

class TreasuresCollection extends StatefulWidget {
  const TreasuresCollection({super.key});

  static Page<dynamic> page() =>
      const MaterialPage<void>(child: TreasuresCollection());

  @override
  State<TreasuresCollection> createState() => _TreasuresCollectionState();
}

class _TreasuresCollectionState extends State<TreasuresCollection> {
  _ListType _selectedType = _ListType.all;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.treasuresCollectionPageTitle),
      ),
      body: Column(
        children: <Widget>[
          const SizedBox(height: 16),
          _TreasureCollectionTypeSelector(
            selectedType: _selectedType,
            onSelectionChanged: (selected) {
              setState(() {
                _selectedType = selected.first;
              });
            },
          ),
          const SizedBox(height: 16),
          Expanded(
            child: switch (_selectedType) {
              _ListType.all =>
                const TreasuresCollectionList(treasures: _treasuresMock),
              _ListType.favourites => const TreasuresCollectionList(
                  treasures: _favouriteTreasuresMock,
                ),
            },
          ),
        ],
      ),
    );
  }
}

class _TreasureCollectionTypeSelector extends StatelessWidget {
  const _TreasureCollectionTypeSelector({
    required this.selectedType,
    required this.onSelectionChanged,
  });

  final _ListType selectedType;
  final void Function(Set<_ListType>) onSelectionChanged;

  @override
  Widget build(BuildContext context) {
    return SegmentedButton<_ListType>(
      segments: const <ButtonSegment<_ListType>>[
        ButtonSegment<_ListType>(
          value: _ListType.all,
          label: Text('All'),
          icon: Icon(Icons.list_rounded),
        ),
        ButtonSegment<_ListType>(
          value: _ListType.favourites,
          label: Text('Favourites'),
          icon: Icon(Icons.favorite_rounded),
        ),
      ],
      selected: <_ListType>{selectedType},
      onSelectionChanged: onSelectionChanged,
    );
  }
}
