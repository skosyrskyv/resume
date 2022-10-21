import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class GradientTextButton extends StatelessWidget {
  final String? text;
  final TextStyle? textStyle;
  final EdgeInsets padding;
  final List<Color> colors;
  final VoidCallback? onTap;
  const GradientTextButton({
    super.key,
    this.text,
    this.textStyle,
    this.padding = EdgeInsets.zero,
    required this.colors,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: padding,
        color: Colors.transparent,
        child: AnimatedTextKit(
          animatedTexts: [
            ColorizeAnimatedText(
              text ?? '',
              textStyle: textStyle ?? Theme.of(context).textTheme.bodyMedium!,
              colors: colors,
            ),
          ],
          onTap: onTap,
          isRepeatingAnimation: false,
        ),
      ),
    );
  }
}
