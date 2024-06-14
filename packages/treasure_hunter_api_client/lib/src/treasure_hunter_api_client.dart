import 'dart:async';
import 'dart:math';

import 'package:storage/storage.dart';
import 'package:treasure_hunter_api_client/src/mocks/available_treasures_mock.dart';
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

    final currentUser = await fetchCurrentUser();
    final updatedUser = currentUser.copyWith(
      name: name ?? currentUser.name,
      email: email ?? currentUser.email,
    );

    await _treasureHunterApiFaker.updateUser(updatedUser);
    return fetchCurrentUser();
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

    final allTreasures = availableTreasuresMock.map(Treasure.fromJson).toList();

    final newTreasure = allTreasures.firstWhere((t) => t.id == treasureId);
    await _treasureHunterApiFaker
        .updateUserTreasures([...userTreasures, newTreasure]);
    return _treasureHunterApiFaker.fetchUserTreasures();
  }

  /// Fetch the user's favourite treasures.
  ///
  /// Returns a list of the user's favourite treasures.
  Future<List<Treasure>> fetchUserFavouriteTreasures() async {
    // fake a delay of 1-3 seconds
    await Future<void>.delayed(Duration(seconds: Random().nextInt(3) + 1));

    return _treasureHunterApiFaker.fetchUserFavoriteTreasures();
  }

  /// POST /user/favouriteTreasures/{treasureId}
  /// Add a treasure to the user favourite treasures.
  ///
  /// Supported parameters:
  /// * [treasureId] - The ID of the treasure to add.
  ///
  /// Returns a list of the user's favourite treasures.
  Future<List<Treasure>> addUserFavouriteTreasure(String treasureId) async {
    // fake a delay of 1-3 seconds
    await Future<void>.delayed(Duration(seconds: Random().nextInt(3) + 1));

    final favouriteTreasures =
        await _treasureHunterApiFaker.fetchUserFavoriteTreasures();

    if (favouriteTreasures.any((t) => t.id == treasureId)) {
      throw Exception('User already has this treasure as a favourite');
    }

    final allTreasures = availableTreasuresMock.map(Treasure.fromJson).toList();
    final treasure = allTreasures.firstWhere((t) => t.id == treasureId);
    await _treasureHunterApiFaker.updateUserFavoriteTreasures(
      [...favouriteTreasures, treasure],
    );
    return _treasureHunterApiFaker.fetchUserFavoriteTreasures();
  }

  /// Remove a treasure from the user favourite treasures.
  ///
  /// Supported parameters:
  /// * [treasureId] - The ID of the treasure to remove.
  ///
  /// Returns a list of the user's favourite treasures.
  Future<List<Treasure>> removeUserFavouriteTreasure(String treasureId) async {
    // fake a delay of 1-3 seconds
    await Future<void>.delayed(Duration(seconds: Random().nextInt(3) + 1));

    final favouriteTreasures =
        await _treasureHunterApiFaker.fetchUserFavoriteTreasures();

    if (!favouriteTreasures.any((t) => t.id == treasureId)) {
      throw Exception('User does not have this treasure as a favourite');
    }

    final updatedFavoriteTreasures =
        favouriteTreasures.where((t) => t.id != treasureId).toList();

    await _treasureHunterApiFaker
        .updateUserFavoriteTreasures(updatedFavoriteTreasures);
    return _treasureHunterApiFaker.fetchUserFavoriteTreasures();
  }

  /// Searches for treasures that the user does not already have.
  Future<Treasure?> searchTreasures() async {
    // fake a delay of 1-3 seconds
    await Future<void>.delayed(Duration(seconds: Random().nextInt(3) + 1));

    // 2/3 of the time return no treasure
    if (Random().nextDouble() < 2 / 3) {
      return null;
    }

    final allTreasures = availableTreasuresMock.map(Treasure.fromJson).toList();
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
}
