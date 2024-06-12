import 'package:flutter/material.dart';

/// {@template app_snack_bar}
/// A custom [SnackBar] to be used in the app.
/// {@endtemplate}
class AppSnackBar extends SnackBar {
  /// {@macro app_snack_bar}
  AppSnackBar.success({
    required String title,
    required String message,
    Key? key,
  }) : this._(
          title: title,
          message: message,
          color: Colors.green,
          icon: const Icon(
            Icons.check_circle,
            color: Colors.green,
          ),
          key: key,
        );

  /// {@macro app_snack_bar}
  AppSnackBar.failure({
    required String title,
    required String message,
    Key? key,
  }) : this._(
          title: title,
          message: message,
          color: Colors.red,
          icon: const Icon(
            Icons.error,
            color: Colors.red,
          ),
          key: key,
        );

  AppSnackBar._({
    required String title,
    required String message,
    required Color color,
    required Widget icon,
    super.key,
    super.padding = EdgeInsets.zero,
    super.shape = _shape,
    super.elevation = 0,
    super.backgroundColor = Colors.white,
    super.behavior = SnackBarBehavior.floating,
    super.showCloseIcon = true,
    super.closeIconColor = Colors.black,
  }) : super(
          content: _content(
            title: title,
            message: message,
            color: color,
            icon: icon,
          ),
        );

  static const RoundedRectangleBorder _shape = RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(8)),
  );

  static Widget _content({
    required String title,
    required String message,
    required Color color,
    required Widget icon,
  }) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border(
            left: BorderSide(
              color: color,
              width: 3,
            ),
          ),
          boxShadow: const [
            BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.07),
              blurRadius: 9,
              offset: Offset(0, 1),
            ),
          ],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            icon,
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  const SizedBox(height: 7),
                  Text(
                    message,
                    style: const TextStyle(
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
