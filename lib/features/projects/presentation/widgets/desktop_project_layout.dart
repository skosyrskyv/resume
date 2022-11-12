import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:resume/features/projects/data/models/project_model.dart';
import 'package:resume/features/projects/presentation/widgets/links_bar.dart';
import 'package:resume/features/projects/presentation/widgets/project_info_tile.dart';

class DesktopProjectsLayout extends StatelessWidget {
  final ProjectModel project;
  const DesktopProjectsLayout({
    super.key,
    required this.project,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16.0,
          vertical: 16,
        ),
        child: Stack(
          children: [
            Text(
              project.name.tr(),
              textAlign: TextAlign.center,
              style: theme.textTheme.displaySmall,
            ),
            Positioned.fill(
              child: Container(
                padding: const EdgeInsets.only(bottom: 100, top: 50),
                child: Image.asset(project.asset),
              ),
            ),
            Positioned(
              left: 10,
              bottom: 60,
              child: LinksBar(links: project.links),
            ),
            Positioned(
              right: 0,
              bottom: 40,
              child: ProjectInfoTile(text: project.info.tr()),
            ),
          ],
        ),
      ),
    );
  }
}
