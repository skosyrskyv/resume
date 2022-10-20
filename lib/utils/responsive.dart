// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';

class BreakPoints {
  static const int XL = 1600;
  static const int LG = 1140;
  static const int MD = 720;
  static const int SM = 576;
  static const int XS = 400;
}

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget? tablet;
  final Widget desktop;

  const Responsive({
    Key? key,
    required this.mobile,
    this.tablet,
    required this.desktop,
  }) : super(key: key);

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < BreakPoints.SM;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < BreakPoints.LG &&
      MediaQuery.of(context).size.width >= BreakPoints.SM;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= BreakPoints.LG;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    if (size.width >= BreakPoints.LG) {
      return desktop;
    } else if (size.width >= BreakPoints.MD && tablet != null) {
      return tablet!;
    } else if (size.width >= BreakPoints.MD && tablet == null) {
      return desktop;
    } else {
      return mobile;
    }
  }
}
