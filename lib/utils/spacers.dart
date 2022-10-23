import 'package:flutter/material.dart';

class VerticalSpacer extends StatelessWidget {
  final double height;
  const VerticalSpacer(this.height, {Key? key}) : super(key: key);

  factory VerticalSpacer.h4() {
    return const VerticalSpacer(4);
  }

  factory VerticalSpacer.h8() {
    return const VerticalSpacer(8);
  }

  factory VerticalSpacer.h10() {
    return const VerticalSpacer(10);
  }

  factory VerticalSpacer.h20() {
    return const VerticalSpacer(20);
  }

  factory VerticalSpacer.h16() {
    return const VerticalSpacer(16);
  }

  factory VerticalSpacer.h32() {
    return const VerticalSpacer(32);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
    );
  }
}

class HorizontalSpacer extends StatelessWidget {
  final double width;
  const HorizontalSpacer(
    this.width, {
    Key? key,
  }) : super(key: key);

  factory HorizontalSpacer.w4() {
    return const HorizontalSpacer(4);
  }

  factory HorizontalSpacer.w8() {
    return const HorizontalSpacer(8);
  }

  factory HorizontalSpacer.w10() {
    return const HorizontalSpacer(10);
  }

  factory HorizontalSpacer.w20() {
    return const HorizontalSpacer(20);
  }

  factory HorizontalSpacer.w16() {
    return const HorizontalSpacer(16);
  }

  factory HorizontalSpacer.w32() {
    return const HorizontalSpacer(32);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
    );
  }
}
