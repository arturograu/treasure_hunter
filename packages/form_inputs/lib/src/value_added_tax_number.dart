import 'package:formz/formz.dart';

/// ValueAddedTaxNumber input validation error
enum ValueAddedTaxNumberValidationError {
  /// ValueAddedTaxNumber is invalid (generic validation error)
  invalid
}

/// {@template value_added_tax_number}
/// Reusable Value Added Tax (VAT) number form input.
/// {@endtemplate}
class ValueAddedTaxNumber
    extends FormzInput<String, ValueAddedTaxNumberValidationError> {
  /// {@macro value_added_tax_number}
  const ValueAddedTaxNumber.pure() : super.pure('');

  /// {@macro value_added_tax_number}
  const ValueAddedTaxNumber.dirty([super.value = '']) : super.dirty();

  /// RegExp validation pattern:
  ///
  /// * ^ denotes the start of the string.
  ///
  /// * [A-Z]{2} matches exactly two uppercase letters, representing the
  /// country prefix.
  ///
  /// * [A-Za-z0-9]{8,} matches eight or characters or digits.
  ///
  /// * $ denotes the end of the string, ensuring that the entire string
  /// matches the pattern.
  ///
  static final RegExp _vatNumberRegExp = RegExp(r'^[A-Z]{2}[A-Za-z0-9]{8,}$');

  @override
  ValueAddedTaxNumberValidationError? validator(String value) {
    return _vatNumberRegExp.hasMatch(value)
        ? null
        : ValueAddedTaxNumberValidationError.invalid;
  }
}
