import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:treasure_hunter_api_client/treasure_hunter_api_client.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const factory User({
    required String id,
    required String name,
    required String email,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
