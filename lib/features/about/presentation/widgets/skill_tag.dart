import 'dart:math';

import 'package:flutter/material.dart';
import 'package:resume/core/animations/fade_in_animation.dart';

class SkillTag extends StatelessWidget {
  final String text;
  const SkillTag({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return FadeInAnimation(
      delay: Duration(
        milliseconds:
            Random(DateTime.now().microsecondsSinceEpoch).nextInt(1000) + 500,
      ),
      child: Container(
        padding: const EdgeInsets.all(2),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              theme.colorScheme.primary,
              theme.colorScheme.secondary,
            ],
          ),
        ),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          decoration: BoxDecoration(
            color: theme.colorScheme.background,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Text(
            text,
            style: theme.textTheme.titleMedium,
          ),
        ),
      ),
    );
  }
}
