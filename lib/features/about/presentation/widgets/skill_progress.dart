import 'package:flutter/material.dart';
import 'package:resume/core/widgets/animated_progress_bar.dart';
import 'package:resume/utils/spacers.dart';
import 'package:resume/extensions/string_extension.dart';

class SkillProgress extends StatelessWidget {
  final String label;
  final double progress;
  final Duration animationDelay;
  const SkillProgress({
    super.key,
    required this.label,
    required this.progress,
    required this.animationDelay,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          label.capitalize(),
          style: Theme.of(context).textTheme.labelMedium,
        ),
        VerticalSpacer.h8(),
        AnimatedProgressBar(
          progress: progress,
          animationStartDelay: animationDelay,
        ),
      ],
    );
  }
}
