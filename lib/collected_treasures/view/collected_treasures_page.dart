import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:treasure_hunter/app/cubit/app_cubit.dart';
import 'package:treasure_hunter/collected_treasures/collected_treasures.dart';
import 'package:treasure_hunter/l10n/l10n.dart';
import 'package:user_repository/user_repository.dart';

enum ListType { all, favourites }

class CollectedTreasures extends StatelessWidget {
  CollectedTreasures({super.key})
      : _controller = ValueNotifier<ListType>(ListType.all);

  static Page<dynamic> page() =>
      MaterialPage<void>(child: CollectedTreasures());

  final ValueNotifier<ListType> _controller;

  void _onSelectionChanged(Set<ListType> selected) {
    _controller.value = selected.first;
  }

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
            onSelectionChanged: _onSelectionChanged,
          ),
          const SizedBox(height: 16),
          Expanded(
            child: BlocProvider(
              create: (_) => CollectedTreasuresBloc(
                collectedTreasures:
                    context.read<AppCubit>().state.userCollectedTreasures,
                favouriteTreasures:
                    context.read<AppCubit>().state.userFavouriteTreasures,
                userRepository: context.read<UserRepository>(),
              ),
              child: CollectedTreasuresView(
                selectedListController: _controller,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _TreasureCollectionTypeSelector extends StatefulWidget {
  const _TreasureCollectionTypeSelector({
    required this.onSelectionChanged,
  });

  final void Function(Set<ListType>) onSelectionChanged;

  @override
  State<_TreasureCollectionTypeSelector> createState() =>
      _TreasureCollectionTypeSelectorState();
}

class _TreasureCollectionTypeSelectorState
    extends State<_TreasureCollectionTypeSelector> {
  ListType _selectedType = ListType.all;

  void _onSelectionChanged(Set<ListType> selected) {
    setState(() {
      _selectedType = selected.first;
    });
    widget.onSelectionChanged(selected);
  }

  @override
  Widget build(BuildContext context) {
    return SegmentedButton<ListType>(
      selected: <ListType>{_selectedType},
      showSelectedIcon: false,
      onSelectionChanged: _onSelectionChanged,
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
