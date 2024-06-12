import 'package:treasure_hunter_api_client/treasure_hunter_api_client.dart'
    as api_client;
import 'package:treasures_repository/treasures_repository.dart';

class TreasuresRepository {
  const TreasuresRepository({
    required api_client.TreasureHunterApiClient apiClient,
  }) : _apiClient = apiClient;

  final api_client.TreasureHunterApiClient _apiClient;

  /// Search for a treasure.
  ///
  /// Returns the found treasure or `null` if no treasure was found.
  Future<Treasure?> searchForTreasure() async {
    final result = await _apiClient.searchTreasures();
    return result != null ? Treasure.fromApi(result) : null;
  }
}
