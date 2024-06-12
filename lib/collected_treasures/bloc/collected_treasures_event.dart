part of 'collected_treasures_bloc.dart';

@freezed
class CollectedTreasuresEvent with _$CollectedTreasuresEvent {
  const factory CollectedTreasuresEvent.started() = Started;

  const factory CollectedTreasuresEvent.treasureFavouriteStatusChanged({
    required String id,
  }) = TreasureFavouriteStatusChanged;
}
