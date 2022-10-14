import 'package:flutter/material.dart';
import 'package:iitu_web/core/constants/responsive_constants.dart';
import 'package:iitu_web/core/extension/extensions.dart';

class ResponsiveWidget extends StatelessWidget {
  final Widget largeScreen;
  final Widget? mediumScreen;
  final Widget smallScreen;

  const ResponsiveWidget({
    super.key,
    required this.largeScreen,
    this.mediumScreen,
    required this.smallScreen,
  });

  static bool isSmallScreen(BuildContext context) {
    return context.mediaQuery.size.width < ResponsiveConsts.smallScreen;
  }

  static bool isLargeScreen(BuildContext context) {
    return context.mediaQuery.size.width > ResponsiveConsts.largeScreen;
  }

  static bool isMediumScreen(BuildContext context) {
    return context.mediaQuery.size.width >= ResponsiveConsts.smallScreen &&
        context.mediaQuery.size.width <= ResponsiveConsts.largeScreen;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > ResponsiveConsts.largeScreen) {
          return largeScreen;
        } else if (constraints.maxWidth <= ResponsiveConsts.largeScreen &&
            constraints.maxWidth >= ResponsiveConsts.smallScreen) {
          return mediumScreen ?? largeScreen;
        } else {
          return smallScreen;
        }
      },
    );
  }
}
