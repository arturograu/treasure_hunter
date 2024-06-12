import 'package:formz/formz.dart';

/// Company name input validation error
enum CompanyNameValidationError {
  /// Company name is invalid (generic validation error)
  invalid
}

/// {@template company_name}
/// Reusable company name form input.
/// {@endtemplate}
class CompanyName extends FormzInput<String, CompanyNameValidationError> {
  /// {@macro company_name}
  const CompanyName.pure() : super.pure('');

  /// {@macro company_name}
  const CompanyName.dirty([super.value = '']) : super.dirty();

  /// RegExp validation pattern:
  ///
  /// * ^ and $ denote the start and end of the string, respectively, ensuring
  /// that the entire string matches the pattern.
  ///
  /// * [\w\s]+ matches one or more word characters (letters, digits, or
  /// underscores) or whitespace characters.
  ///
  static final RegExp _companyNameRegExp = RegExp(r'^[\w\s]+$');

  @override
  CompanyNameValidationError? validator(String value) {
    return _companyNameRegExp.hasMatch(value)
        ? null
        : CompanyNameValidationError.invalid;
  }
}
