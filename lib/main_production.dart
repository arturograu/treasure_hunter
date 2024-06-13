import 'package:persistent_storage/persistent_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:treasure_hunter/app/app.dart';
import 'package:treasure_hunter/bootstrap.dart';
import 'package:treasure_hunter_api_client/treasure_hunter_api_client.dart';
import 'package:treasures_repository/treasures_repository.dart';
import 'package:user_repository/user_repository.dart';

void main() {
  bootstrap(
    () async {
      final sharedPreferences = await SharedPreferences.getInstance();
      final storage = PersistentStorage(sharedPreferences: sharedPreferences);
      final treasureApiClient = TreasureHunterApiClient(storage: storage);
      final userRepository = UserRepository(apiClient: treasureApiClient);
      final treasuresRepository =
          TreasuresRepository(apiClient: treasureApiClient);

      return App(
        user: await userRepository.user.first,
        userCollectedTreasures: await userRepository.collectedTreasures.first,
        userFavouriteTreasures: await userRepository.favouriteTreasures.first,
        userRepository: userRepository,
        treasuresRepository: treasuresRepository,
      );
    },
  );
}
