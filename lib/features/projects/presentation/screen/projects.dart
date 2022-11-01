import 'package:flutter/material.dart';
import 'package:resume/core/widgets/screen.dart';
import 'package:resume/features/projects/data/projects_data.dart';
import 'package:resume/features/projects/presentation/widgets/project.dart';

class Projects extends StatefulWidget {
  const Projects({super.key});

  @override
  State<Projects> createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
  late PageController _controller;
  @override
  void initState() {
    _controller = PageController(
      keepPage: false,
      initialPage: 999,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Screen(
      body: PageView.builder(
        controller: _controller,
        padEnds: false,
        itemBuilder: (context, index) => Project(
          project: kProjectsData[index % kProjectsData.length],
        ),
      ),
    );
  }
}
