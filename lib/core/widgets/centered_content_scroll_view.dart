import 'package:flutter/material.dart';

class CenteredContentScrollView extends StatelessWidget {
  final EdgeInsets padding;
  final double contentMaxWidth;
  final ScrollPhysics physics;
  final List<Widget> children;
  const CenteredContentScrollView({
    super.key,
    this.padding = EdgeInsets.zero,
    this.contentMaxWidth = 1000,
    this.physics = const AlwaysScrollableScrollPhysics(),
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    final windowSize = MediaQuery.of(context).size;
    return SingleChildScrollView(
      physics: physics,
      child: Container(
        width: windowSize.width,
        alignment: Alignment.center,
        child: Container(
          padding: padding,
          constraints: BoxConstraints(
            maxWidth: contentMaxWidth,
            minHeight: windowSize.height,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: children,
          ),
        ),
      ),
    );
  }
}
