import 'dart:async';

import 'package:treasure_hunter_api_client/treasure_hunter_api_client.dart'
    as api_client;
import 'package:treasures_repository/treasures_repository.dart';
import 'package:user_repository/src/models/user/user.dart';

/// User controller
typedef UserController = StreamController<User>;

class UserRepository {
  UserRepository({
    required api_client.TreasureHunterApiClient apiClient,
  }) : _apiClient = apiClient {
    _apiClient.fetchCurrentUser().then((user) {
      _userController.add(User.fromApi(user));
    });
  }

  final api_client.TreasureHunterApiClient _apiClient;

  /// Stream of [api_client.User] which will emit the current user when the
  /// user changes in the data layer.
  Stream<User> get user => _userController.stream;

  final _userController = UserController.broadcast();

  /// Change the user's name.
  ///
  /// [name] - The new name.
  Future<void> changeName(String name) async {
    final user = await _apiClient.updateUser(name: name);
    _userController.add(User.fromApi(user));
  }

  /// Change the user's email.
  ///
  /// [email] - The new email.
  Future<void> changeEmail(String email) async {
    final user = await _apiClient.updateUser(email: email);
    _userController.add(User.fromApi(user));
  }

  /// Add a treasure to the user's favourite treasures.
  ///
  /// [treasureId] - The ID of the treasure to add.
  Future<void> markTreasureAsFavourite(String treasureId) async {
    await _apiClient.addUserFavouriteTreasure(treasureId);
    final user = await _apiClient.fetchCurrentUser();
    _userController.add(User.fromApi(user));
  }

  /// Add a treasure to the user's collection of treasures.
  ///
  /// [treasureId] - The ID of the treasure to add.
  Future<List<Treasure>> addTreasure(String treasureId) async {
    final userTreasures = await _apiClient.addUserTreasure(treasureId);
    return userTreasures.map(Treasure.fromApi).toList();
  }
}
