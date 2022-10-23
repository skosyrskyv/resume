// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';

class BreakPoints {
  static const int XL = 1600;
  static const int LG = 1140;
  static const int MD = 720;
  static const int SM = 600;
  static const int XS = 520;
}

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget? tablet;
  final Widget desktop;
  final bool showTabletAsMobile;

  const Responsive({
    Key? key,
    required this.mobile,
    this.tablet,
    this.showTabletAsMobile = false,
    required this.desktop,
  }) : super(key: key);

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < BreakPoints.XS;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < BreakPoints.MD &&
      MediaQuery.of(context).size.width >= BreakPoints.XS;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= BreakPoints.MD;

  @override
  Widget build(BuildContext context) {
    if (isDesktop(context)) {
      return desktop;
    } else if (isTablet(context) && tablet != null) {
      return tablet!;
    } else if (isTablet(context) && tablet == null && !showTabletAsMobile) {
      return desktop;
    } else {
      return mobile;
    }
  }
}
