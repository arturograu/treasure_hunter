import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:user_repository/user_repository.dart';

part 'app_cubit.freezed.dart';
part 'app_state.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit({
    required User user,
    required UserRepository userRepository,
  }) : super(AppState(user: user)) {
    _userSubscription = userRepository.user.listen(_userChanged);
  }

  late StreamSubscription<User> _userSubscription;

  void _userChanged(User user) => emit(state.copyWith(user: user));

  @override
  Future<void> close() {
    _userSubscription.cancel();
    return super.close();
  }
}
