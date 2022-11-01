import 'package:flutter/material.dart';
import 'package:resume/core/widgets/blurred_surface.dart';
import 'package:resume/features/projects/data/models/project_model.dart';

class Project extends StatelessWidget {
  final ProjectModel project;
  const Project({super.key, required this.project});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16.0,
          vertical: 16,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              project.name,
              textAlign: TextAlign.right,
              style: theme.textTheme.displaySmall,
            ),
            Expanded(
              child: Stack(
                children: [
                  Positioned.fill(
                    child: Container(
                      color: Colors.red.withOpacity(0.3),
                    ),
                  ),
                  Positioned(
                      right: 0,
                      bottom: MediaQuery.of(context).size.height / 3,
                      child: BlurredSurface(
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          padding: const EdgeInsets.all(16),
                          child: Text(
                            project.info,
                            style: theme.textTheme.bodyLarge,
                          ),
                        ),
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
