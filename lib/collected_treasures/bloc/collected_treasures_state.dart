part of 'collected_treasures_bloc.dart';

@freezed
class CollectedTreasuresState with _$CollectedTreasuresState {
  const factory CollectedTreasuresState({
    required Map<String, Treasure> allCollectedTreasures,
    required Set<String> favouriteTreasures,
    @Default(<String>{}) Set<String> pendingFavouriteDeletions,
    @Default(<String>{}) Set<String> pendingFavouriteAdditions,
  }) = _CollectedTreasuresState;
}
