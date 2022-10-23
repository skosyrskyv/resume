import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:resume/features/about/data/skills_data.dart';
import 'package:resume/features/about/presentation/widgets/skill_progress.dart';
import 'package:resume/features/about/presentation/widgets/titled_surface.dart';
import 'package:resume/utils/spacers.dart';
import 'package:resume/extensions/iterable_extension.dart';

class SoftSkills extends StatelessWidget {
  const SoftSkills({super.key});

  List<Widget> _contentBuilder() {
    return kSoftSkillsData
        .mapWithIndex(
          (skill, index) => Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SkillProgress(
                label: skill.name.tr(),
                progress: skill.progress,
                animationDelay: Duration(milliseconds: 500 + index * 300),
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
      title: 'soft_skills_title'.tr(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: _contentBuilder(),
      ),
    );
  }
}
