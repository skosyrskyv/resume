import 'package:resume/features/projects/data/models/source_link.dart';

class ProjectModel {
  final String name;
  final String info;
  final String asset;
  final List<SourceLink> links;
  final String? git;

  const ProjectModel({
    required this.name,
    required this.info,
    required this.asset,
    required this.links,
    this.git,
  });
}
