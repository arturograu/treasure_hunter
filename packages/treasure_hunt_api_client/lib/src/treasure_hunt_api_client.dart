import 'dart:convert';
import 'dart:io';
import 'dart:math';

import 'package:storage/storage.dart';
import 'package:treasure_hunter_api_client/src/treasure_hunter_api_faker.dart';
import 'package:treasure_hunter_api_client/treasure_hunt_api_client.dart';

class TreasureHuntApiClient {
  TreasureHuntApiClient({required Storage storage})
      : _treasureHunterApiFaker = TreasureHunterApiFaker(storage: storage);

  final TreasureHunterApiFaker _treasureHunterApiFaker;

  /// Fetch the current user.
  Future<User> fetchCurrentUser() async {
    return _treasureHunterApiFaker.fetchCurrentUser();
  }

  /// Update the current user.
  ///
  /// Supported parameters:
  /// * [name] - The user name.
  /// * [email] - The user email.
  /// * [favouriteTreasures] - The user's favourite treasures.
  Future<User> updateUser({
    String? name,
    String? email,
    List<Treasure>? favouriteTreasures,
  }) async {
    return _treasureHunterApiFaker.updateUser(
      name: name,
      email: email,
      favouriteTreasures: favouriteTreasures,
    );
  }

  /// Fetches the user's treasures.
  Future<List<Treasure>> fetchUserTreasures() async {
    return _treasureHunterApiFaker.fetchUserTreasures();
  }

  /// Adds a new treasure to the user's collection.
  Future<List<Treasure>> addUserTreasure() async {
    final treasure = await searchTreasures();
    return _treasureHunterApiFaker.addUserTreasure(treasure: treasure);
  }

  /// Searches for treasures that the user does not already have.
  Future<Treasure> searchTreasures() async {
    // Read and decode the available treasures JSON file
    final availableTreasuresString =
        await File('./mocks/available_treasures_mock.json').readAsString();
    final availableTreasuresJson =
        jsonDecode(availableTreasuresString) as List<Map<String, dynamic>>;

    // Convert JSON data to a list of Treasure objects
    final availableTreasures =
        availableTreasuresJson.map(Treasure.fromJson).toList();

    // Fetch user's treasures
    final userTreasures = await _treasureHunterApiFaker.fetchUserTreasures();

    // Filter out treasures that the user already has
    final userTreasureIds = userTreasures.map((t) => t.id).toSet();
    final filteredTreasures = availableTreasures.where((treasure) {
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
