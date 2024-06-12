import 'package:formz/formz.dart';

/// Email input validation error
enum EmailValidationError {
  /// Email is invalid (generic validation error)
  invalid
}

/// {@template email}
/// Reusable email form input.
/// {@endtemplate}
class Email extends FormzInput<String, EmailValidationError> {
  /// {@macro email}
  const Email.pure() : super.pure('');

  /// {@macro email}
  const Email.dirty([super.value = '']) : super.dirty();

  /// RegExp validation pattern:
  ///
  /// * ^ and $ denote the start and end of the string, respectively, ensuring
  /// that the entire string matches the pattern.
  ///
  /// * [\w-]+ matches one or more word characters (letters, digits, or
  /// underscores) or hyphens at the beginning of the email address.
  ///
  /// * (\.[\w-]+)* matches zero or more occurrences of a period followed by one
  /// or more word characters or hyphens. This allows for multiple subdomains or
  /// periods within the domain.
  ///
  /// * @[a-zA-Z0-9]+ matches the "@" symbol followed by one or more
  /// alphanumeric characters (letters or digits).
  ///
  /// * (\.[a-zA-Z0-9]+)* matches zero or more occurrences of a period followed
  /// by one or more alphanumeric characters. This allows for multiple domain
  /// segments.
  ///
  /// * (\.[a-zA-Z]{2,}) matches the top-level domain (TLD) part, consisting of
  /// a period followed by at least two letters. This ensures that the TLD is a
  /// valid domain extension.
  static final RegExp _emailRegExp = RegExp(
    r'^[\w-]+(\.[\w-]+)*@[a-zA-Z0-9]+(\.[a-zA-Z0-9]+)*(\.[a-zA-Z]{2,})$',
  );

  @override
  EmailValidationError? validator(String value) {
    return _emailRegExp.hasMatch(value) ? null : EmailValidationError.invalid;
  }
}
