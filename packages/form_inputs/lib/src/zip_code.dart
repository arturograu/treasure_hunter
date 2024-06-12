import 'package:formz/formz.dart';

/// ZipCode input validation error
enum ZipCodeValidationError {
  /// ZipCode is invalid (generic validation error)
  invalid
}

/// {@template zip_code}
/// Reusable zip code form input.
/// {@endtemplate}
class ZipCode extends FormzInput<String, ZipCodeValidationError> {
  /// {@macro zip_code}
  const ZipCode.pure() : super.pure('');

  /// {@macro zip_code}
  const ZipCode.dirty([super.value = '']) : super.dirty();

  /// RegExp validation pattern:
  ///
  /// * ^ denotes the start of the string.
  ///
  /// * \d{5} matches exactly five digits.
  ///
  /// * $ denotes the end of the string, ensuring that the entire string
  /// matches the pattern.
  static final RegExp _zipCodeRegExp = RegExp(r'^\d{5}$');

  @override
  ZipCodeValidationError? validator(String value) {
    return _zipCodeRegExp.hasMatch(value)
        ? null
        : ZipCodeValidationError.invalid;
  }
}
