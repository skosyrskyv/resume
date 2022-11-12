import 'package:flutter/material.dart';
import 'package:resume/core/widgets/gradient_logo_image.dart';
import 'package:resume/utils/spacers.dart';

class ContactsListItem extends StatelessWidget {
  final String label;
  final String imagePath;
  final Duration animationDelay;
  final VoidCallback? onTap;

  const ContactsListItem({
    super.key,
    required this.label,
    required this.imagePath,
    this.animationDelay = Duration.zero,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return FittedBox(
      child: SizedBox(
        width: 550,
        child: Row(
          children: [
            InkWell(
              borderRadius: BorderRadius.circular(1000),
              onTap: onTap,
              child: Container(
                padding: const EdgeInsets.all(8),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    GradientLogoImage(assetPath: imagePath),
                    HorizontalSpacer.w32(),
                    Text(
                      label,
                      style: theme.textTheme.headlineLarge,
                    ),
                    HorizontalSpacer.w32(),
                  ],
                ),
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
