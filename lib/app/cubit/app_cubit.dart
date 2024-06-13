import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:treasures_repository/treasures_repository.dart';
import 'package:user_repository/user_repository.dart';

part 'app_cubit.freezed.dart';
part 'app_state.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit({
    required User user,
    required List<Treasure> userCollectedTreasures,
    required List<Treasure> userFavouriteTreasures,
    required UserRepository userRepository,
  }) : super(
          AppState(
            user: user,
            userCollectedTreasures: userCollectedTreasures,
            userFavouriteTreasures: userFavouriteTreasures,
          ),
        ) {
    _userSubscription = userRepository.user.listen(_userChanged);
    _collectedTreasuresSubscription =
        userRepository.collectedTreasures.listen(_collectedTreasuresChanged);
    _favouriteTreasuresSubscription =
        userRepository.favouriteTreasures.listen(_favouriteTreasuresChanged);
  }

  late StreamSubscription<User> _userSubscription;
  late StreamSubscription<List<Treasure>> _collectedTreasuresSubscription;
  late StreamSubscription<List<Treasure>> _favouriteTreasuresSubscription;

  void _userChanged(User user) => emit(state.copyWith(user: user));
  void _collectedTreasuresChanged(List<Treasure> treasures) =>
      emit(state.copyWith(userCollectedTreasures: treasures));
  void _favouriteTreasuresChanged(List<Treasure> treasures) => emit(
        state.copyWith(userFavouriteTreasures: treasures),
      );

  @override
  Future<void> close() {
    _userSubscription.cancel();
    _collectedTreasuresSubscription.cancel();
    _favouriteTreasuresSubscription.cancel();
    return super.close();
  }
}
