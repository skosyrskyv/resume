import 'package:flutter/material.dart';

class Surface extends StatelessWidget {
  final double? width;
  final double? height;
  final EdgeInsets margin;
  final EdgeInsets padding;
  final BoxConstraints? constraints;
  final Widget? child;

  const Surface({
    super.key,
    this.width,
    this.height,
    this.margin = EdgeInsets.zero,
    this.padding = EdgeInsets.zero,
    this.constraints,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final decoration = BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: theme.colorScheme.surface,
    );

    return Container(
      width: width,
      height: height,
      margin: margin,
      padding: padding,
      constraints: constraints,
      decoration: decoration,
      child: child,
    );
  }
}
