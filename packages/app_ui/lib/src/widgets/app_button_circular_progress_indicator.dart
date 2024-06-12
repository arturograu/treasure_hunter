import 'package:flutter/material.dart';

/// {@template app_button_circular_progress_indicator}
/// A circular progress indicator used in buttons.
/// {@endtemplate}
class AppButtonCircularProgressIndicator extends StatelessWidget {
  /// {@macro app_button_circular_progress_indicator}
  const AppButtonCircularProgressIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox.square(
      dimension: 18,
      child: CircularProgressIndicator(
        color: Colors.white,
      ),
    );
  }
}
