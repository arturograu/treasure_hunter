import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';

/// {@template app_password_text_field}
/// A password text field component.
/// {@endtemplate}
class AppPasswordTextField extends StatefulWidget {
  /// {@macro app_password_text_field}
  const AppPasswordTextField({
    super.key,
    this.focusNode,
    this.controller,
    this.label,
    this.labelSuffix,
    this.hintText,
    this.suffix,
    this.readOnly,
    this.errorText,
    this.onChanged,
    this.onTapOutside,
  });

  /// Controles whether this widget has keyboard focus.
  final FocusNode? focusNode;

  /// Controls the text being edited.
  final TextEditingController? controller;

  /// Text that describes the input field.
  final String? label;

  /// Widget that appears after the label.
  final Widget? labelSuffix;

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

  /// Called when the text field has been tapped outside.
  final void Function(PointerDownEvent)? onTapOutside;

  @override
  State<AppPasswordTextField> createState() => _AppPasswordTextFieldState();
}

class _AppPasswordTextFieldState extends State<AppPasswordTextField> {
  bool _passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    return AppTextField(
      controller: widget.controller,
      focusNode: widget.focusNode,
      label: widget.label,
      labelSuffix: widget.labelSuffix,
      hintText: widget.hintText,
      keyboardType: TextInputType.emailAddress,
      autoFillHints: const [AutofillHints.email],
      autocorrect: false,
      obscureText: !_passwordVisible,
      readOnly: widget.readOnly ?? false,
      errorText: widget.errorText,
      onChanged: widget.onChanged,
      onTapOutside: widget.onTapOutside,
      suffix: IconButton(
        padding: const EdgeInsets.only(right: 4),
        onPressed: () => setState(() => _passwordVisible = !_passwordVisible),
        icon: Icon(
          _passwordVisible
              ? Icons.visibility_off_outlined
              : Icons.visibility_outlined,
          color: Colors.black,
        ),
        splashRadius: 20,
      ),
    );
  }
}
