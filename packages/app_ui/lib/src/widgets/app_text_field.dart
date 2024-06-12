// coverage:ignore-file

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// {@template app_text_field}
/// A text field component based on material [TextFormField] widget with a
/// fixed, left-aligned label text displayed above the text field.
/// {@endtemplate}
class AppTextField extends StatelessWidget {
  /// {@macro app_text_field}
  const AppTextField({
    super.key,
    this.focusNode,
    this.initialValue,
    this.autoFillHints,
    this.controller,
    this.inputFormatters,
    this.autocorrect = true,
    this.readOnly = false,
    this.obscureText = false,
    this.label,
    this.labelSuffix,
    this.hintText,
    this.errorText,
    this.prefix,
    this.suffix,
    this.keyboardType,
    this.onChanged,
    this.onSubmitted,
    this.onTap,
    this.onTapOutside,
  });

  /// Controls whether this widget has keyboard focus.
  final FocusNode? focusNode;

  /// A value to initialize the field to.
  final String? initialValue;

  /// List of auto fill hints.
  final Iterable<String>? autoFillHints;

  /// Controls the text being edited.
  ///
  /// If null, this widget will create its own [TextEditingController] and
  /// initialize its [TextEditingController.text] with [initialValue].
  final TextEditingController? controller;

  /// Optional input validation and formatting overrides.
  final List<TextInputFormatter>? inputFormatters;

  /// Whether to enable autocorrect.
  /// Defaults to true.
  final bool autocorrect;

  /// Whether the text field should be read-only.
  /// Defaults to false.
  final bool readOnly;

  /// Whether the text should be hidden.
  final bool obscureText;

  /// Text that describes the input field.
  final String? label;

  /// Widget that appears after the label.
  final Widget? labelSuffix;

  /// Text that suggests what sort of input the field accepts.
  final String? hintText;

  /// Text that appears below the field.
  final String? errorText;

  /// A widget that appears before the editable part of the text field.
  final Widget? prefix;

  /// A widget that appears after the editable part of the text field.
  final Widget? suffix;

  /// The type of keyboard to use for editing the text.
  /// Defaults to [TextInputType.text] if maxLines is one and
  /// [TextInputType.multiline] otherwise.
  final TextInputType? keyboardType;

  /// Called when the user inserts or deletes texts in the text field.
  final ValueChanged<String>? onChanged;

  /// {@macro flutter.widgets.editableText.onSubmitted}
  final ValueChanged<String>? onSubmitted;

  /// Called when the text field has been tapped.
  final VoidCallback? onTap;

  /// Called when the text field has been tapped outside.
  final void Function(PointerDownEvent)? onTapOutside;

  @override
  Widget build(BuildContext context) {
    final inputDecorationTheme = Theme.of(context).inputDecorationTheme;
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (label != null)
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: Text(
                  label!,
                  style: inputDecorationTheme.labelStyle,
                ),
              ),
              if (labelSuffix != null) ...[
                const SizedBox(width: 8),
                labelSuffix!,
              ],
            ],
          ),
        TextFormField(
          focusNode: focusNode,
          initialValue: initialValue,
          controller: controller,
          inputFormatters: inputFormatters,
          keyboardType: keyboardType,
          autocorrect: autocorrect,
          readOnly: readOnly,
          obscureText: obscureText,
          autofillHints: autoFillHints,
          onFieldSubmitted: onSubmitted,
          decoration: InputDecoration(
            hintText: hintText,
            errorText: errorText,
            prefixIcon: prefix,
            suffixIconConstraints: const BoxConstraints.tightFor(
              width: 32,
              height: 32,
            ),
            prefixIconConstraints: const BoxConstraints.tightFor(
              width: 32,
            ),
          ),
          onChanged: onChanged,
          onTap: onTap,
          onTapOutside: onTapOutside,
        ),
      ],
    );
  }
}
