import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:math';

import 'package:storage/storage.dart';
import 'package:treasure_hunter_api_client/src/treasure_hunter_api_faker.dart';
import 'package:treasure_hunter_api_client/treasure_hunter_api_client.dart';

class TreasureHunterApiClient {
  TreasureHunterApiClient({required Storage storage})
      : _treasureHunterApiFaker = TreasureHunterApiFaker(storage: storage);

  final TreasureHunterApiFaker _treasureHunterApiFaker;

  /// Fetch the current user.
  Future<User> fetchCurrentUser() async {
    // fake a delay of 1-3 seconds
    await Future<void>.delayed(Duration(seconds: Random().nextInt(3) + 1));

    return _treasureHunterApiFaker.fetchCurrentUser();
  }

  /// Update the current user.
  ///
  /// Supported parameters:
  /// * [name] - The user name.
  /// * [email] - The user email.
  Future<User> updateUser({
    String? name,
    String? email,
  }) async {
    // fake a delay of 1-3 seconds
    await Future<void>.delayed(Duration(seconds: Random().nextInt(3) + 1));

    return _treasureHunterApiFaker.updateUser(
      name: name,
      email: email,
    );
  }

  /// POST /user/favouriteTreasures/{treasureId}
  /// Add a treasure to the user favourite treasures.
  ///
  /// Supported parameters:
  /// * [treasureId] - The ID of the treasure to add.
  Future<List<Treasure>> addUserFavouriteTreasure(String treasureId) async {
    // fake a delay of 1-3 seconds
    await Future<void>.delayed(Duration(seconds: Random().nextInt(3) + 1));

    final user = await _treasureHunterApiFaker.fetchCurrentUser();

    if (user.favouriteTreasures.any((t) => t.id == treasureId)) {
      throw Exception('User already has this treasure as a favourite');
    }

    final allTreasures = await _allTreasures;
    final treasure = allTreasures.firstWhere((t) => t.id == treasureId);
    final updatedUser = await _treasureHunterApiFaker.updateUser(
      favouriteTreasures: [...user.favouriteTreasures, treasure],
    );
    return updatedUser.favouriteTreasures;
  }

  /// Fetches the user's treasures.
  Future<List<Treasure>> fetchUserTreasures() async {
    // fake a delay of 1-3 seconds
    await Future<void>.delayed(Duration(seconds: Random().nextInt(3) + 1));

    return _treasureHunterApiFaker.fetchUserTreasures();
  }

  /// Adds a new treasure to the user's collection.
  /// Supported parameters:
  /// * [treasureId] - The ID of the treasure to add.
  Future<List<Treasure>> addUserTreasure(String treasureId) async {
    // fake a delay of 1-3 seconds
    await Future<void>.delayed(Duration(seconds: Random().nextInt(3) + 1));

    final userTreasures = await _treasureHunterApiFaker.fetchUserTreasures();

    if (userTreasures.any((t) => t.id == treasureId)) {
      throw Exception('User already has this treasure');
    }

    final allTreasures = await _allTreasures;

    return _treasureHunterApiFaker.addUserTreasure(
      treasure: allTreasures.firstWhere((t) => t.id == treasureId),
    );
  }

  /// Searches for treasures that the user does not already have.
  Future<Treasure?> searchTreasures() async {
    // fake a delay of 1-3 seconds
    await Future<void>.delayed(Duration(seconds: Random().nextInt(3) + 1));

    // 1/3 of the time, return no treasure
    if (Random().nextInt(3) == 0) {
      return null;
    }

    final allTreasures = await _allTreasures;
    final userTreasures = await _treasureHunterApiFaker.fetchUserTreasures();

    // Filter out treasures that the user already has
    final userTreasureIds = userTreasures.map((t) => t.id).toSet();
    final filteredTreasures = allTreasures.where((treasure) {
      return !userTreasureIds.contains(treasure.id);
    }).toList();

    // If no treasures are available after filtering, throw an exception
    if (filteredTreasures.isEmpty) {
      throw Exception('No new treasures available');
    }

    // Pick and return a random treasure from the filtered list
    return filteredTreasures[Random().nextInt(filteredTreasures.length)];
  }

  Future<List<Treasure>> get _allTreasures async {
    final allTreasuresString =
        await File('./mocks/available_treasures_mock.json').readAsString();
    final allTreasuresJson =
        jsonDecode(allTreasuresString) as List<Map<String, dynamic>>;

    return allTreasuresJson.map(Treasure.fromJson).toList();
  }
}
