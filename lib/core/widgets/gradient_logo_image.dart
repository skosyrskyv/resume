import 'package:flutter/material.dart';

class GradientLogoImage extends StatelessWidget {
  final String assetPath;
  final double size;
  const GradientLogoImage({
    super.key,
    required this.assetPath,
    this.size = 35.0,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ClipOval(
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
          radius: size,
          backgroundImage: AssetImage(assetPath),
          backgroundColor: theme.colorScheme.onPrimary,
        ),
      ),
    );
  }
}
