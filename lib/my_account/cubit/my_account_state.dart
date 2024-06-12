part of 'my_account_cubit.dart';

class MyAccountState extends Equatable {
  const MyAccountState({
    required this.name,
    required this.email,
    this.status = FormzSubmissionStatus.initial,
  });

  final String name;
  final String email;
  final FormzSubmissionStatus status;

  @override
  List<Object?> get props => [name, email, status];

  MyAccountState copyWith({
    String? name,
    String? email,
    FormzSubmissionStatus? status,
  }) {
    return MyAccountState(
      name: name ?? this.name,
      email: email ?? this.email,
      status: status ?? this.status,
    );
  }
}
