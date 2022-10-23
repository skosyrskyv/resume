import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:resume/core/widgets/animated_progress_bar.dart';
import 'package:resume/features/about/presentation/widgets/titled_surface.dart';
import 'package:resume/utils/spacers.dart';
import 'package:resume/extensions/string_extension.dart';

class SoftSkills extends StatelessWidget {
  const SoftSkills({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return TitledSurface(
      title: 'soft_skills_title'.tr(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'communication'.tr().capitalize(),
            style: theme.textTheme.labelMedium,
          ),
          VerticalSpacer.h8(),
          const AnimatedProgressBar(
            progress: 70,
            animationStartDelay: Duration(milliseconds: 500),
          ),
          VerticalSpacer.h16(),
          Text(
            'team_work'.tr().capitalize(),
            style: theme.textTheme.labelMedium,
          ),
          VerticalSpacer.h8(),
          const AnimatedProgressBar(
            progress: 60,
            animationStartDelay: Duration(milliseconds: 800),
          ),
          VerticalSpacer.h16(),
          Text(
            'learning'.tr().capitalize(),
            style: theme.textTheme.labelMedium,
          ),
          VerticalSpacer.h8(),
          const AnimatedProgressBar(
            progress: 85,
            animationStartDelay: Duration(milliseconds: 1000),
          ),
          VerticalSpacer.h16(),
          Text(
            'initiation'.tr().capitalize(),
            style: theme.textTheme.labelMedium,
          ),
          VerticalSpacer.h8(),
          const AnimatedProgressBar(
            progress: 90,
            animationStartDelay: Duration(milliseconds: 1300),
          ),
          VerticalSpacer.h16(),
          Text(
            'presentation'.tr().capitalize(),
            style: theme.textTheme.labelMedium,
          ),
          VerticalSpacer.h8(),
          const AnimatedProgressBar(
            progress: 80,
            animationStartDelay: Duration(milliseconds: 1300),
          ),
          VerticalSpacer.h8(),
        ],
      ),
    );
  }
}
