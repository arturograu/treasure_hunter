import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:treasure_hunter/app/cubit/app_cubit.dart';
import 'package:treasure_hunter/collected_treasures/collected_treasures.dart';
import 'package:treasure_hunter/l10n/l10n.dart';
import 'package:user_repository/user_repository.dart';

enum ListType { all, favourites }

class CollectedTreasures extends StatefulWidget {
  const CollectedTreasures({super.key});

  static Page<dynamic> page() =>
      const MaterialPage<void>(child: CollectedTreasures());

  @override
  State<CollectedTreasures> createState() => _CollectedTreasuresState();
}

class _CollectedTreasuresState extends State<CollectedTreasures> {
  ListType _selectedType = ListType.all;

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
            child: BlocProvider(
              create: (_) => CollectedTreasuresBloc(
                user: context.read<AppCubit>().state.user,
                userRepository: context.read<UserRepository>(),
              ),
              child: CollectedTreasuresView(selectedList: _selectedType),
            ),
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

  final ListType selectedType;
  final void Function(Set<ListType>) onSelectionChanged;

  @override
  Widget build(BuildContext context) {
    return SegmentedButton<ListType>(
      selected: <ListType>{selectedType},
      showSelectedIcon: false,
      onSelectionChanged: onSelectionChanged,
      segments: const <ButtonSegment<ListType>>[
        ButtonSegment<ListType>(
          value: ListType.all,
          label: Text('All'),
          icon: Icon(Icons.list_rounded),
        ),
        ButtonSegment<ListType>(
          value: ListType.favourites,
          label: Text('Favourites'),
          icon: Icon(Icons.favorite_rounded),
        ),
      ],
    );
  }
}
