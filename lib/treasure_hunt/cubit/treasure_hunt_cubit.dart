import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:treasures_repository/treasures_repository.dart';
import 'package:user_repository/user_repository.dart';

part 'treasure_hunt_cubit.freezed.dart';
part 'treasure_hunt_state.dart';

class TreasureHuntCubit extends Cubit<TreasureHuntState> {
  TreasureHuntCubit({
    required TreasuresRepository treasuresRepository,
    required UserRepository userRepository,
  })  : _treasuresRepository = treasuresRepository,
        _userRepository = userRepository,
        super(const TreasureHuntState.initial());

  final TreasuresRepository _treasuresRepository;
  final UserRepository _userRepository;

  Future<void> searchForTreasure() async {
    emit(const TreasureHuntState.searching());

    try {
      final treasure = await _treasuresRepository.searchForTreasure();
      if (treasure == null) {
        emit(const TreasureHuntState.noTreasuresFound());
      } else {
        emit(TreasureHuntState.treasureFound(treasure: treasure));
      }
    } on Exception {
      emit(const TreasureHuntState.noTreasuresFound());
    }
  }

  Future<void> collectTreasure(String id) async {
    if (state is! TreasureFound) {
      return;
    }

    emit((state as TreasureFound).copyWith(isCollectingTreasure: true));

    try {
      await _userRepository.collectTreasure(id);
      emit(const TreasureHuntState.initial());
    } on Exception {
      emit((state as TreasureFound).copyWith(isCollectingTreasure: false));
    }
  }
}
