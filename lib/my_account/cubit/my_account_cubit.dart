import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:form_inputs/form_inputs.dart';
import 'package:formz/formz.dart';
import 'package:user_repository/user_repository.dart';

part 'my_account_state.dart';

class MyAccountCubit extends Cubit<MyAccountState> {
  MyAccountCubit({required User user})
      : super(
          MyAccountState(
            name: Name.dirty(user.name),
            email: Email.dirty(user.email),
          ),
        );

  void nameChanged(String value) {
    final name = Name.dirty(value);
    emit(state.copyWith(name: name));
  }

  void emailChanged(String value) {
    final email = Email.dirty(value);
    emit(state.copyWith(email: email));
  }
}
