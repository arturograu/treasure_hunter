part of 'collected_treasures_bloc.dart';

@freezed
class CollectedTreasuresEvent with _$CollectedTreasuresEvent {
  const factory CollectedTreasuresEvent.treasureFavouriteStatusChanged(
    String id,
  ) = TreasureFavouriteStatusChanged;

  const factory CollectedTreasuresEvent.collectedTreasuresUpdated({
    required List<Treasure> allCollectedTreasures,
  }) = CollectedTreasuresUpdated;

  const factory CollectedTreasuresEvent.favouriteTreasuresUpdated({
    required Set<String> favouriteTreasures,
  }) = FavouriteTreasuresUpdated;
}
