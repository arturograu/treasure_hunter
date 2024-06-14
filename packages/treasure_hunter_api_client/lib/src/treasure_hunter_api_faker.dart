import 'dart:convert';

import 'package:storage/storage.dart';
import 'package:treasure_hunter_api_client/treasure_hunter_api_client.dart';

abstract class TreasureHunterApiFakerStorageKeys {
  static const userTreasures = '__user_treasures_key__';
  static const userFavoriteTreasures = '__user_favorite_treasures_key__';
  static const currentUser = '__current_user_key__';
}

class TreasureHunterApiFaker {
  const TreasureHunterApiFaker({
    required Storage storage,
  }) : _storage = storage;

  final Storage _storage;

  Future<User> fetchCurrentUser() async {
    final user = await _storage.read(
      key: TreasureHunterApiFakerStorageKeys.currentUser,
    );

    if (user == null) {
      return const User(
        id: '1',
        name: 'John Doe',
        email: 'john.doe@gmail.com',
      );
    }

    final userJson = jsonDecode(user) as Map<String, dynamic>;
    return User.fromJson(userJson);
  }

  Future<void> updateUser(User updatedUser) async {
    await _storage.write(
      key: TreasureHunterApiFakerStorageKeys.currentUser,
      value: jsonEncode(updatedUser.toJson()),
    );
  }

  Future<void> updateUserTreasures(List<Treasure> treasures) async {
    await _storage.write(
      key: TreasureHunterApiFakerStorageKeys.userTreasures,
      value: jsonEncode(treasures),
    );
  }

  Future<List<Treasure>> fetchUserTreasures() async {
    final treasures = await _storage.read(
      key: TreasureHunterApiFakerStorageKeys.userTreasures,
    );

    if (treasures == null) {
      return [];
    }

    final treasuresJson = (jsonDecode(treasures) as List)
        .map((item) => item as Map<String, dynamic>)
        .toList();
    return treasuresJson.map(Treasure.fromJson).toList();
  }

  Future<List<Treasure>> fetchUserFavoriteTreasures() async {
    final favoriteTreasures = await _storage.read(
      key: TreasureHunterApiFakerStorageKeys.userFavoriteTreasures,
    );

    if (favoriteTreasures == null) {
      return [];
    }

    final favoriteTreasuresJson = (jsonDecode(favoriteTreasures) as List)
        .map((item) => item as Map<String, dynamic>)
        .toList();
    return favoriteTreasuresJson.map(Treasure.fromJson).toList();
  }

  Future<void> updateUserFavoriteTreasures(List<Treasure> treasures) async {
    await _storage.write(
      key: TreasureHunterApiFakerStorageKeys.userFavoriteTreasures,
      value: jsonEncode(treasures),
    );
  }
}
