import 'package:freezed_annotation/freezed_annotation.dart';

part 'treasure.freezed.dart';
part 'treasure.g.dart';

@freezed
class Treasure with _$Treasure {
  const factory Treasure({
    required String id,
    required String name,
    required String description,
    required String imageUrl,
    required double latitude,
    required double longitude,
  }) = _Treasure;

  factory Treasure.fromJson(Map<String, dynamic> json) =>
      _$TreasureFromJson(json);
}
