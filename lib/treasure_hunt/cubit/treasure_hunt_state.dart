part of 'treasure_hunt_cubit.dart';

@freezed
sealed class TreasureHuntState with _$TreasureHuntState {
  const factory TreasureHuntState.initial() = Initial;

  const factory TreasureHuntState.searching() = Searching;

  const factory TreasureHuntState.noTreasuresFound() = NoTreasuresFound;

  const factory TreasureHuntState.treasureFound({
    required Treasure treasure,
    @Default(false) bool isCollectingTreasure,
  }) = TreasureFound;
}
