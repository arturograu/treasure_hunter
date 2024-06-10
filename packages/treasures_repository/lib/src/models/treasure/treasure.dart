import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:treasure_hunter_api_client/treasure_hunter_api_client.dart'
    as api_client;

part 'treasure.freezed.dart';

@freezed
abstract class Treasure with _$Treasure {
  const factory Treasure({
    required String id,
    required String name,
    required String description,
  }) = _Treasure;

  factory Treasure.fromApi(api_client.Treasure treasureApi) => Treasure(
        id: treasureApi.id,
        name: treasureApi.name,
        description: treasureApi.description,
      );
}
