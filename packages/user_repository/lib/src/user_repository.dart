import 'dart:async';

import 'package:rxdart/rxdart.dart';
import 'package:treasure_hunter_api_client/treasure_hunter_api_client.dart'
    as api_client;
import 'package:treasures_repository/treasures_repository.dart';
import 'package:user_repository/src/models/user/user.dart';

/// User controller
typedef UserController = StreamController<User>;

/// Treasures controller
typedef TreasuresController = StreamController<List<Treasure>>;

class UserRepository {
  UserRepository({
    required api_client.TreasureHunterApiClient apiClient,
  }) : _apiClient = apiClient {
    _initialize();
  }

  final api_client.TreasureHunterApiClient _apiClient;

  Future<void> _initialize() async {
    final results = await Future.wait([
      _apiClient.fetchCurrentUser(),
      _apiClient.fetchUserTreasures(),
      _apiClient.fetchUserFavouriteTreasures(),
    ]);

    final user = results[0] as api_client.User;
    final userTreasures = results[1] as List<api_client.Treasure>;
    final userFavouriteTreasures = results[2] as List<api_client.Treasure>;

    _userController.add(User.fromApi(user));
    _collectedTreasuresController
        .add(userTreasures.map(Treasure.fromApi).toList());
    _favouriteTreasuresController
        .add(userFavouriteTreasures.map(Treasure.fromApi).toList());
  }

  /// Stream of [User] which will emit the current user when the
  /// user changes in the data layer.
  Stream<User> get user => _userController.stream;

  /// Stream of [Treasure]'s collected by the user.
  Stream<List<Treasure>> get collectedTreasures =>
      _collectedTreasuresController.stream;

  /// Stream of [Treasure]'s favourited by the user.
  Stream<List<Treasure>> get favouriteTreasures =>
      _favouriteTreasuresController.stream;

  final _userController = BehaviorSubject<User>();
  final _collectedTreasuresController = BehaviorSubject<List<Treasure>>();
  final _favouriteTreasuresController = BehaviorSubject<List<Treasure>>();

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
    final result = await _apiClient.addUserFavouriteTreasure(treasureId);
    _favouriteTreasuresController.add(result.map(Treasure.fromApi).toList());
  }

  /// Remove a treasure from the user's favourite treasures.
  ///
  /// [treasureId] - The ID of the treasure to remove.
  Future<void> removeTreasureFromFavourites(String treasureId) async {
    final result = await _apiClient.removeUserFavouriteTreasure(treasureId);
    _favouriteTreasuresController.add(result.map(Treasure.fromApi).toList());
  }

  /// Add a treasure to the user's collection of treasures.
  ///
  /// [treasureId] - The ID of the treasure to add.
  Future<void> collectTreasure(String treasureId) async {
    final result = await _apiClient.addUserTreasure(treasureId);
    _collectedTreasuresController.add(result.map(Treasure.fromApi).toList());
  }

  void dispose() {
    _userController.close();
    _collectedTreasuresController.close();
    _favouriteTreasuresController.close();
  }
}
