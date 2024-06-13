part of 'app_cubit.dart';

@freezed
class AppState with _$AppState {
  const factory AppState({
    required User user,
    required List<Treasure> userCollectedTreasures,
    required List<Treasure> userFavouriteTreasures,
  }) = _AppState;
}
