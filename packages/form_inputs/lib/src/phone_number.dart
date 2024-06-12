import 'package:formz/formz.dart';

/// Phone number input validation error
enum PhoneNumberValidationError {
  /// Phone number is invalid (generic validation error)
  invalid
}

/// {@template phone_number}
/// Reusable phone number form input.
/// {@endtemplate}
class PhoneNumber extends FormzInput<String, PhoneNumberValidationError> {
  /// {@macro phone_number}
  const PhoneNumber.pure() : super.pure('null');

  /// {@macro phone_number}
  const PhoneNumber.dirty([super.value = '']) : super.dirty();

  static final RegExp _phoneNumberRegExp = RegExp(r'^[0-9]{9,}$');

  @override
  PhoneNumberValidationError? validator(String value) {
    return _phoneNumberRegExp.hasMatch(value)
        ? null
        : PhoneNumberValidationError.invalid;
  }
}
