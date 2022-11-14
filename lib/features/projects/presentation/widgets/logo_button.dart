import 'package:flutter/material.dart';
import 'package:resume/core/widgets/gradient_logo_image.dart';

class LogoButton extends StatelessWidget {
  final String? assetPath;
  final VoidCallback? onTap;
  final double size;
  const LogoButton({
    super.key,
    this.assetPath,
    this.onTap,
    this.size = 20,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: GradientLogoImage(
        size: size,
        assetPath: assetPath ?? '',
      ),
    );
  }
}
