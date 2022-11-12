import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:resume/features/projects/data/models/project_model.dart';

class MobileProjectLayout extends StatelessWidget {
  final ProjectModel project;
  const MobileProjectLayout({
    super.key,
    required this.project,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SafeArea(
      child: Stack(
        children: [
          Positioned(
            left: 0,
            top: 0,
            right: 0,
            child: Text(
              project.name.tr(),
              textAlign: TextAlign.center,
              style: theme.textTheme.displaySmall,
            ),
          ),
          Positioned.fill(
            child: Container(
              padding: const EdgeInsets.only(bottom: 100, top: 50),
              child: Image.asset(project.asset),
            ),
          ),
        ],
      ),
    );
  }
}
