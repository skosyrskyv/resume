import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:resume/utils/empty.dart';

class BlurredSurface extends StatelessWidget {
  final double? height;
  final double? width;
  final EdgeInsets padding;
  final EdgeInsets margin;
  final BoxConstraints constrains;
  final BorderRadius borderRadius;
  final Color? background;
  final double sigmaX;
  final double sigmaY;
  final Widget child;
  const BlurredSurface({
    super.key,
    this.height,
    this.width,
    this.padding = EdgeInsets.zero,
    this.margin = EdgeInsets.zero,
    this.constrains = const BoxConstraints(),
    this.borderRadius = BorderRadius.zero,
    this.background,
    this.sigmaX = 10,
    this.sigmaY = 10,
    this.child = const EmptyWidget(),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: ClipRRect(
        borderRadius: borderRadius,
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: sigmaX,
            sigmaY: sigmaY,
          ),
          child: Container(
            height: height,
            width: width,
            padding: padding,
            constraints: constrains,
            decoration: BoxDecoration(
              color: background,
            ),
            child: child,
          ),
        ),
      ),
    );
  }
}
