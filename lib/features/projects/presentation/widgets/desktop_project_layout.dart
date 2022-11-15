import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:resume/features/projects/data/models/project_model.dart';
import 'package:resume/features/projects/presentation/state/page_controller_provider.dart';
import 'package:resume/features/projects/presentation/widgets/links_bar.dart';
import 'package:resume/features/projects/presentation/widgets/page_controls.dart';
import 'package:resume/features/projects/presentation/widgets/project_info_tile.dart';

class DesktopProjectsLayout extends StatelessWidget {
  final ProjectModel project;
  const DesktopProjectsLayout({
    super.key,
    required this.project,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16.0,
          vertical: 16,
        ),
        child: Stack(
          children: [
            Positioned.fill(
              child: Container(
                padding: const EdgeInsets.only(bottom: 80, top: 0),
                child: Image.asset(project.asset),
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 8,
              child: Center(
                child: LinksBar(
                  links: project.links,
                  direction: Axis.horizontal,
                ),
              ),
            ),
            Positioned(
              bottom: 110,
              right: 50,
              child: ProjectInfoTile(
                projectName: project.name.tr(),
                text: project.info.tr(),
              ),
            ),
            Positioned(
              bottom: 90,
              right: 90,
              child: PageControls(
                controller: PageControllerProvider.of(context)!.controller,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
