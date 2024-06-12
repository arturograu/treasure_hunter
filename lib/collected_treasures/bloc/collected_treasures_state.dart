part of 'collected_treasures_bloc.dart';

enum CollectedTreasuresStatus { initial, loading, loaded }

@freezed
class CollectedTreasuresState with _$CollectedTreasuresState {
  const factory CollectedTreasuresState({
    required List<String> favouriteTreasures,
    @Default(<Treasure>[]) List<Treasure> allCollectedTreasures,
    @Default(<String>{}) Set<String> pendingFavouriteDeletions,
    @Default(<String>{}) Set<String> pendingFavouriteAdditions,
    @Default(CollectedTreasuresStatus.initial) CollectedTreasuresStatus status,
  }) = _CollectedTreasuresState;
}
