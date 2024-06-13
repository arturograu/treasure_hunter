import 'package:flutter/material.dart';

/// {@template app_button_circular_progress_indicator}
/// A circular progress indicator used in buttons.
/// {@endtemplate}
class AppButtonCircularProgressIndicator extends StatelessWidget {
  /// {@macro app_button_circular_progress_indicator}
  const AppButtonCircularProgressIndicator({
    super.key,
    this.color,
  });

  /// The color of the progress indicator.
  final Color? color;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SizedBox.square(
      dimension: 18,
      child: CircularProgressIndicator(
        color: color ?? theme.primaryColor,
      ),
    );
  }
}
