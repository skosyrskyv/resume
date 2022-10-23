import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:resume/extensions/iterable_extension.dart';
import 'package:resume/features/about/data/skills_data.dart';
import 'package:resume/features/about/presentation/widgets/skill_progress.dart';
import 'package:resume/features/about/presentation/widgets/skill_tag.dart';
import 'package:resume/features/about/presentation/widgets/titled_surface.dart';
import 'package:resume/utils/spacers.dart';

class HardSkills extends StatelessWidget {
  const HardSkills({super.key});

  List<Widget> _tagsBuilder() {
    return kHardSkillTechnologiesData
        .map((name) => SkillTag(text: name))
        .toList();
  }

  List<Widget> _skillsBuilder() {
    return kHardSkillsData
        .mapWithIndex(
          (skill, index) => Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SkillProgress(
                label: skill.name.tr(),
                progress: skill.progress,
                animationDelay: Duration(milliseconds: 300 + index * 300),
              ),
              VerticalSpacer.h16(),
            ],
          ),
        )
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return TitledSurface(
      title: 'hard_skills_title'.tr(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Wrap(
              spacing: 10,
              runSpacing: 10,
              children: _tagsBuilder(),
            ),
          ),
          VerticalSpacer.h16(),
          ..._skillsBuilder(),
        ],
      ),
    );
  }
}
