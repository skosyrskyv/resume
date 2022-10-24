import 'package:flutter/material.dart';
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
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: ShaderMask(
                        blendMode: theme.brightness == Brightness.light
                            ? BlendMode.lighten
                            : BlendMode.darken,
                        shaderCallback: (Rect bounds) {
                          return LinearGradient(
                            colors: [
                              theme.colorScheme.primary,
                              theme.colorScheme.secondary,
                            ],
                          ).createShader(bounds);
                        },
                        child: CircleAvatar(
                          radius: 35,
                          backgroundImage: AssetImage(imagePath),
                          backgroundColor: theme.colorScheme.onPrimary,
                        ),
                      ),
                    ),
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
