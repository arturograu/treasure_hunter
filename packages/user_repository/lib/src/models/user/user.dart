import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:treasure_hunter_api_client/treasure_hunter_api_client.dart'
    as api_client;
import 'package:treasures_repository/treasures_repository.dart';

part 'user.freezed.dart';

@freezed
abstract class User with _$User {
  const factory User({
    required String id,
    required String name,
    required String email,
  }) = _User;

  factory User.fromApi(api_client.User userApi) => User(
        id: userApi.id,
        name: userApi.name,
        email: userApi.email,
      );
}
