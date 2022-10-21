import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class GradientTextButton extends StatelessWidget {
  final String? text;
  final VoidCallback? onTap;
  final bool selected;
  const GradientTextButton({
    super.key,
    this.text,
    this.onTap,
    this.selected = true,
  });

  @override
  Widget build(BuildContext context) {
    final colorizeColors = [
      Colors.purple,
      Colors.blue.shade700,
    ];

    const colorizeTextStyle = TextStyle(
      fontSize: 20.0,
      fontFamily: 'Invetero',
    );

    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(32),
        color: Colors.transparent,
        child: AnimatedTextKit(
          animatedTexts: [
            ColorizeAnimatedText(
              text ?? '',
              textStyle: colorizeTextStyle,
              colors: colorizeColors,
            ),
          ],
          isRepeatingAnimation: false,
        ),
      ),
    );
  }
}
