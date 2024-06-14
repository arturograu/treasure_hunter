import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';

/// {@template app_email_text_field}
/// An email text field component.
/// {@endtemplate}
class AppEmailTextField extends StatelessWidget {
  /// {@macro app_email_text_field}
  const AppEmailTextField({
    super.key,
    this.initialValue,
    this.label,
    this.hintText,
    this.suffix,
    this.readOnly,
    this.errorText,
    this.onChanged,
  });

  /// Controls the text being edited.
  final String? initialValue;

  /// Text that describes the input field.
  final String? label;

  /// Text that suggests what sort of input the field accepts.
  final String? hintText;

  /// A widget that appears after the editable part of the text field.
  final Widget? suffix;

  /// Error text to display below the field.
  final String? errorText;

  /// Called when the user inserts or deletes texts in the text field.
  final ValueChanged<String>? onChanged;

  /// Whether the text field should be read-only.
  /// Defaults to false.
  final bool? readOnly;

  @override
  Widget build(BuildContext context) {
    return AppTextField(
      label: label,
      hintText: hintText,
      keyboardType: TextInputType.emailAddress,
      autoFillHints: const [AutofillHints.email],
      autocorrect: false,
      readOnly: readOnly ?? false,
      errorText: errorText,
      onChanged: onChanged,
      suffix: suffix,
      initialValue: initialValue,
    );
  }
}
