import 'package:formz/formz.dart';

/// Validation errors for the [NewPassword] [FormzInput].
enum NewPasswordValidationError {
  /// The password is less than 8 characters.
  lessThan8Characters,

  /// The password does not contain an uppercase letter.
  noUppercaseLetter,

  /// The password does not contain a lowercase letter.
  noLowercaseLetter,

  /// The password does not contain a number.
  noNumber,

  /// The password does not contain a special character.
  noSpecialCharacter;

  /// Returns a list with all the possible errors.
  static List<NewPasswordValidationError> get all => [
        lessThan8Characters,
        noUppercaseLetter,
        noLowercaseLetter,
        noNumber,
        noSpecialCharacter,
      ];
}

/// {@template new_password}
/// Form input for a new password input.
/// {@endtemplate}
class NewPassword extends FormzInput<String, List<NewPasswordValidationError>> {
  /// {@macro new_password}
  const NewPassword.pure() : super.pure('');

  /// {@macro new_password}
  const NewPassword.dirty([super.value = '']) : super.dirty();

  @override
  List<NewPasswordValidationError>? validator(String? value) => switch (value) {
        null || '' => NewPasswordValidationError.all,
        (final String password) => switch ([
            if (password.isLessThan8Characters)
              NewPasswordValidationError.lessThan8Characters,
            if (!password.hasUppercaseLetter)
              NewPasswordValidationError.noUppercaseLetter,
            if (!password.hasLowercaseLetter)
              NewPasswordValidationError.noLowercaseLetter,
            if (!password.hasNumber) NewPasswordValidationError.noNumber,
            if (!password.hasSpecialCharacter)
              NewPasswordValidationError.noSpecialCharacter,
          ]) {
            [] => null,
            (final List<NewPasswordValidationError> errors) => errors,
          },
      };
}

extension on String {
  bool get isLessThan8Characters => length < 8;
  bool get hasUppercaseLetter => contains(RegExp('[A-Z]'));
  bool get hasLowercaseLetter => contains(RegExp('[a-z]'));
  bool get hasNumber => contains(RegExp('[0-9]'));
  bool get hasSpecialCharacter => contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'));
}
