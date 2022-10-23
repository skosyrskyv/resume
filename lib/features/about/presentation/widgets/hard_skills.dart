import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:resume/core/widgets/animated_progress_bar.dart';
import 'package:resume/features/about/presentation/widgets/skill_tag.dart';
import 'package:resume/features/about/presentation/widgets/titled_surface.dart';
import 'package:resume/utils/spacers.dart';
import 'package:resume/extensions/string_extension.dart';

class HardSkills extends StatelessWidget {
  const HardSkills({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return TitledSurface(
      title: 'hard_skills_title'.tr(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Wrap(
              spacing: 10,
              runSpacing: 10,
              children: const [
                SkillTag(text: 'Flutter'),
                SkillTag(text: 'React'),
                SkillTag(text: 'React Native'),
                SkillTag(text: 'Dart'),
                SkillTag(text: 'JavaScript'),
                SkillTag(text: 'TypeScript'),
                SkillTag(text: 'GitHub'),
                SkillTag(text: 'Figma'),
                SkillTag(text: 'Clean Architecture'),
                SkillTag(text: 'BLoC'),
                SkillTag(text: 'FLUX'),
                SkillTag(text: 'Web Socket'),
                SkillTag(text: 'GraphQL'),
                SkillTag(text: 'REST API'),
              ],
            ),
          ),
          VerticalSpacer.h16(),
          Text(
            'english'.tr().capitalize(),
            style: theme.textTheme.labelMedium,
          ),
          VerticalSpacer.h8(),
          const AnimatedProgressBar(
            progress: 30,
            animationStartDelay: Duration(milliseconds: 600),
          ),
          VerticalSpacer.h8(),
        ],
      ),
    );
  }
}
