import 'package:flutter/material.dart';
import 'package:resume/core/widgets/surface.dart';
import 'package:resume/utils/empty.dart';
import 'package:resume/utils/spacers.dart';

class TitledSurface extends StatelessWidget {
  final String title;
  final BoxConstraints constrains;
  final Widget child;
  const TitledSurface({
    super.key,
    this.title = '',
    this.constrains = const BoxConstraints(),
    this.child = const EmptyWidget(),
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Surface(
      padding: const EdgeInsets.all(16),
      constraints: constrains,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: theme.textTheme.titleLarge,
          ),
          VerticalSpacer.h16(),
          child,
        ],
      ),
    );
  }
}
