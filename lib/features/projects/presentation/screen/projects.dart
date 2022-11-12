import 'package:flutter/material.dart';
import 'package:funvas/funvas.dart';
import 'package:resume/core/animations/animated_background.dart';
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
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Screen(
      body: Stack(
        children: [
          Positioned.fill(
            child: FunvasContainer(
              funvas: AnimatedBackground(
                size: MediaQuery.of(context).size,
                brightness: Theme.of(context).brightness,
              ),
            ),
          ),
          Positioned.fill(
            child: PageView.builder(
              controller: _controller,
              padEnds: false,
              itemBuilder: (context, index) => Project(
                project: kProjectsData[index % kProjectsData.length],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
