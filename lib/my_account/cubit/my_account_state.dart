part of 'my_account_cubit.dart';

class MyAccountState extends Equatable with FormzMixin {
  const MyAccountState({
    required this.name,
    required this.email,
    this.status = FormzSubmissionStatus.initial,
  });

  final Name name;
  final Email email;
  final FormzSubmissionStatus status;

  @override
  List<Object> get props => [name, email, status];

  @override
  List<FormzInput<dynamic, dynamic>> get inputs => [name, email];

  MyAccountState copyWith({
    Name? name,
    Email? email,
    FormzSubmissionStatus? status,
  }) {
    return MyAccountState(
      name: name ?? this.name,
      email: email ?? this.email,
      status: status ?? this.status,
    );
  }
}
