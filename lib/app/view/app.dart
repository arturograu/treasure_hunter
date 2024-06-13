import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:treasure_hunter/app/cubit/app_cubit.dart';
import 'package:treasure_hunter/home/view/home_page.dart';
import 'package:treasure_hunter/l10n/l10n.dart';
import 'package:treasures_repository/treasures_repository.dart';
import 'package:user_repository/user_repository.dart';

class App extends StatelessWidget {
  const App({
    required User user,
    required List<Treasure> userCollectedTreasures,
    required List<Treasure> userFavouriteTreasures,
    required UserRepository userRepository,
    required TreasuresRepository treasuresRepository,
    super.key,
  })  : _user = user,
        _userCollectedTreasures = userCollectedTreasures,
        _userFavouriteTreasures = userFavouriteTreasures,
        _userRepository = userRepository,
        _treasuresRepository = treasuresRepository;

  final User _user;
  final List<Treasure> _userCollectedTreasures;
  final List<Treasure> _userFavouriteTreasures;
  final UserRepository _userRepository;
  final TreasuresRepository _treasuresRepository;

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider.value(value: _userRepository),
        RepositoryProvider.value(value: _treasuresRepository),
      ],
      child: BlocProvider(
        create: (_) => AppCubit(
          user: _user,
          userCollectedTreasures: _userCollectedTreasures,
          userFavouriteTreasures: _userFavouriteTreasures,
          userRepository: _userRepository,
        ),
        child: const _AppView(),
      ),
    );
  }
}

class _AppView extends StatelessWidget {
  const _AppView();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        useMaterial3: true,
      ),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: const HomePage(),
    );
  }
}
