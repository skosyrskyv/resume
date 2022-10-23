import 'package:flutter/material.dart';

class GradientIconButton extends StatelessWidget {
  final VoidCallback? onTap;

  /// Size of touchable area. Default value is 50.
  final double size;
  final IconThemeData? iconTheme;
  final List<Color> colors;
  final Widget icon;

  const GradientIconButton({
    super.key,
    this.onTap,
    this.size = 50,
    this.iconTheme,
    required this.colors,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return InkWell(
      onTap: onTap,
      customBorder: const CircleBorder(),
      highlightColor: theme.colorScheme.surface,
      child: Container(
        height: size,
        width: size,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
        ),
        child: IconTheme(
          data: iconTheme ?? theme.iconTheme,
          child: ShaderMask(
            shaderCallback: (Rect bounds) {
              return LinearGradient(
                colors: colors,
              ).createShader(bounds);
            },
            child: icon,
          ),
        ),
      ),
    );
  }
}
