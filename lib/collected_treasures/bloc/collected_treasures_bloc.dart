import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:treasures_repository/treasures_repository.dart';
import 'package:user_repository/user_repository.dart';

part 'collected_treasures_bloc.freezed.dart';
part 'collected_treasures_event.dart';
part 'collected_treasures_state.dart';

class CollectedTreasuresBloc
    extends Bloc<CollectedTreasuresEvent, CollectedTreasuresState> {
  CollectedTreasuresBloc({
    required User user,
    required UserRepository userRepository,
  })  : _userRepository = userRepository,
        super(
          CollectedTreasuresState(
            favouriteTreasures:
                user.favouriteTreasures.map((e) => e.id).toList(),
          ),
        ) {
    on<Started>(_onStarted);
    on<TreasureFavouriteStatusChanged>(
      _onTreasureFavoriteStatusChanged,
      transformer: concurrent(),
    );
  }

  final UserRepository _userRepository;

  Future<void> _onStarted(
    Started event,
    Emitter<CollectedTreasuresState> emit,
  ) async {
    emit(state.copyWith(status: CollectedTreasuresStatus.loading));

    try {
      final treasures = await _userRepository.fetchAllCollectedTreasures();
      emit(
        state.copyWith(
          allCollectedTreasures: treasures,
          status: CollectedTreasuresStatus.loaded,
        ),
      );
    } on Exception {
      emit(state.copyWith(status: CollectedTreasuresStatus.initial));
    }
  }

  Future<void> _onTreasureFavoriteStatusChanged(
    TreasureFavouriteStatusChanged event,
    Emitter<CollectedTreasuresState> emit,
  ) async {
    final id = event.id;

    // We check if the change in the favourite status is to add the treasure to
    // the favourites or to remove it from the favourites.
    final isFavouriteAddition = state.favouriteTreasures.contains(id);

    // We check if the treasure is already in the list of pending additions or
    // deletions to avoid adding it multiple times.
    if ((isFavouriteAddition && state.pendingFavouriteAdditions.contains(id)) ||
        (!isFavouriteAddition &&
            state.pendingFavouriteDeletions.contains(id))) {
      return;
    }

    if (isFavouriteAddition) {
      // We add the treasure to the list of pending additions to avoid adding it
      // multiple times and to indicate the UI that an addition is pending.
      emit(
        state.copyWith(
          pendingFavouriteAdditions: state.pendingFavouriteAdditions..add(id),
        ),
      );

      try {
        // We add the treasure to the user's favourites.
        await _userRepository.markTreasureAsFavourite(event.id);

        // We update the state to reflect the change.
        emit(
          state.copyWith(
            favouriteTreasures: state.favouriteTreasures..add(id),
            pendingFavouriteAdditions: state.pendingFavouriteAdditions
              ..remove(id),
          ),
        );
        return;
      } on Exception {
        // If an error occurs, we remove the treasure from the list of pending
        // additions.
        emit(
          state.copyWith(
            pendingFavouriteAdditions: state.pendingFavouriteAdditions
              ..remove(id),
          ),
        );
      }

      if (!isFavouriteAddition) {
        emit(
          state.copyWith(
            pendingFavouriteDeletions: state.pendingFavouriteDeletions..add(id),
          ),
        );
        try {
          await _userRepository.removeTreasureFromFavourites(event.id);
          emit(
            state.copyWith(
              favouriteTreasures: state.favouriteTreasures..remove(id),
              pendingFavouriteDeletions: state.pendingFavouriteDeletions
                ..remove(id),
            ),
          );
          return;
        } on Exception {
          emit(
            state.copyWith(
              pendingFavouriteDeletions: state.pendingFavouriteDeletions
                ..remove(id),
            ),
          );
        }
      }
    }
  }
}
