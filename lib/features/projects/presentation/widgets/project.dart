import 'package:flutter/material.dart';
import 'package:resume/features/projects/data/models/project_model.dart';
import 'package:resume/features/projects/presentation/widgets/desktop_project_layout.dart';
import 'package:resume/features/projects/presentation/widgets/mobile_project_layout.dart';
import 'package:resume/utils/responsive.dart';

class Project extends StatelessWidget {
  final ProjectModel project;
  const Project({super.key, required this.project});

  @override
  Widget build(BuildContext context) {
    return Responsive(
      mobile: MobileProjectLayout(project: project),
      desktop: DesktopProjectsLayout(project: project),
    );
  }
}
