import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:treasures_repository/treasures_repository.dart';

part 'treasure_hunt_cubit.freezed.dart';
part 'treasure_hunt_state.dart';

class TreasureHuntCubit extends Cubit<TreasureHuntState> {
  TreasureHuntCubit({required TreasuresRepository treasuresRepository})
      : _treasuresRepository = treasuresRepository,
        super(const TreasureHuntState.initial());

  final TreasuresRepository _treasuresRepository;

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
}
