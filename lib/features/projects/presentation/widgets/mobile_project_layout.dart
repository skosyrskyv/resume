import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:resume/features/projects/data/models/project_model.dart';
import 'package:resume/features/projects/presentation/state/page_controller_provider.dart';
import 'package:resume/features/projects/presentation/widgets/links_bar.dart';
import 'package:resume/features/projects/presentation/widgets/page_controls.dart';
import 'package:resume/features/projects/presentation/widgets/project_info_tile.dart';
import 'package:resume/utils/spacers.dart';

class MobileProjectLayout extends StatelessWidget {
  final ProjectModel project;
  const MobileProjectLayout({
    super.key,
    required this.project,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: !kIsWeb,
      child: Stack(
        children: [
          Positioned(
            top: 8,
            left: 8,
            right: 8,
            child: Image.asset(project.asset),
          ),
          Positioned(
            bottom: kIsWeb ? 110 : 80,
            right: 16,
            left: 16,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                LinksBar(links: project.links),
                HorizontalSpacer.w16(),
                Expanded(
                  child: ProjectInfoTile(
                      text: project.info.tr(), projectName: project.name.tr()),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: kIsWeb ? 90 : 60,
            right: 50,
            child: PageControls(
              controller: PageControllerProvider.of(context)!.controller,
            ),
          ),
        ],
      ),
    );
  }
}
