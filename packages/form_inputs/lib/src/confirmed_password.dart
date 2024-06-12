import 'package:formz/formz.dart';

/// Validation errors for the [ConfirmedPassword] [FormzInput].
enum ConfirmedPasswordValidationError {
  /// Password is null.
  nullPassword,

  /// Passwords do not match.
  mismatch,
}

/// {@template confirmed_password}
/// Form input for a confirmed password input.
/// {@endtemplate}
class ConfirmedPassword
    extends FormzInput<String, ConfirmedPasswordValidationError> {
  /// {@macro confirmed_password}
  const ConfirmedPassword.pure({this.newPassword = ''}) : super.pure('');

  /// {@macro confirmed_password}
  const ConfirmedPassword.dirty({
    required this.newPassword,
    String value = '',
  }) : super.dirty(value);

  /// The original password.
  final String newPassword;

  @override
  ConfirmedPasswordValidationError? validator(String? value) => switch (value) {
        null || '' => ConfirmedPasswordValidationError.nullPassword,
        (final String value) => newPassword != value
            ? ConfirmedPasswordValidationError.mismatch
            : null,
      };
}
