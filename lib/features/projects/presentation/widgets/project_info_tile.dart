import 'package:flutter/material.dart';
import 'package:resume/core/widgets/blurred_surface.dart';
import 'package:resume/utils/spacers.dart';

class ProjectInfoTile extends StatelessWidget {
  final String projectName;
  final String text;
  const ProjectInfoTile({
    super.key,
    required this.text,
    required this.projectName,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BlurredSurface(
      borderRadius: BorderRadius.circular(20),
      background: theme.colorScheme.surface.withOpacity(0.5),
      child: Container(
        constraints: const BoxConstraints(
          maxWidth: 300,
        ),
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (projectName != '') ...[
              Text(
                projectName,
                style: theme.textTheme.titleMedium,
                textAlign: TextAlign.left,
              ),
              VerticalSpacer.h10(),
            ],
            Text(
              text,
              style: theme.textTheme.bodyLarge,
            ),
          ],
        ),
      ),
    );
  }
}
