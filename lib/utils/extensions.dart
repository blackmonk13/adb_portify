import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';

extension StringExtension on String {
  // String capitalize() {
  //   if (isEmpty) {
  //     return this;
  //   }

  //   return this[0].toUpperCase() + substring(1);
  // }

  String get camelCase {
    if (isEmpty) {
      return this;
    }

    final splitted = split(' ');

    return splitted
        .map((e) => e[0].toUpperCase() + e.substring(1))
        .toList()
        .join(' ');
  }
}

BorderRadius get roundedTop {
  return const BorderRadius.only(
    topLeft: Radius.circular(20.0),
    topRight: Radius.circular(20.0),
  );
}

extension ContextUtils on BuildContext {
  double get screenWidth {
    return MediaQuery.of(this).size.width;
  }

  double get screenAspect {
    return MediaQuery.of(this).size.aspectRatio;
  }

  double get screenHeight {
    return MediaQuery.of(this).size.height;
  }

  double get shortestSide {
    return MediaQuery.of(this).size.shortestSide;
  }

  double get longestSide {
    return MediaQuery.of(this).size.longestSide;
  }

  ColorScheme get colorScheme {
    return Theme.of(this).colorScheme;
  }

  TextTheme get textTheme {
    return Theme.of(this).textTheme;
  }

  IconThemeData get iconTheme {
    return Theme.of(this).iconTheme;
  }

  void showSnackBar({
    required String message,
    Color? backgroundColor,
    Color? textColor,
    Color? iconColor,
    IconData icon = FluentIcons.info_24_regular,
  }) {
    ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(
        shape: RoundedRectangleBorder(
          borderRadius: roundedTop,
        ),
        content: Row(
          children: [
            Icon(
              icon,
              color: iconColor,
            ),
            SingleChildScrollView(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  SizedBox(
                    width: screenWidth * .7,
                    child: Text(
                      message,
                      style: textTheme.bodyMedium?.copyWith(color: textColor),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 6,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        backgroundColor: backgroundColor ?? colorScheme.background,
      ),
    );
  }

  void showErrorSnackBar({required String message}) {
    showSnackBar(
      message: message,
      iconColor: colorScheme.error,
      backgroundColor: colorScheme.errorContainer,
      icon: FluentIcons.error_circle_24_regular,
    );
  }
}

Route routeTo({required Widget page}) {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => page,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 1.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
