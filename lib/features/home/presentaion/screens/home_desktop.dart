import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:resume/core/widgets/screen.dart';

class HomeDesktop extends StatelessWidget {
  const HomeDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorizeColors = [
      theme.colorScheme.secondary,
      theme.colorScheme.primary,
    ];

    final colorizeTextStyle = TextStyle(
      fontSize: 60.0,
      fontFamily: GoogleFonts.russoOne().fontFamily,
    );

    List<String> texts = [
      'Hi!\nI`m Slava\nFlutter\nDeveloper',
      'This is my\nFlutter\nApplication\nResume',
      'You can\nRun this\nOn any\nDevice',
    ];

    return Screen(
      body: Center(
        child: AnimatedTextKit(
          pause: Duration(milliseconds: 100),
          animatedTexts: [
            ...texts.map(
              (text) => ColorizeAnimatedText(
                text,
                textStyle: colorizeTextStyle,
                colors: colorizeColors,
              ),
            ),
          ],
          isRepeatingAnimation: true,
          repeatForever: true,
        ),
      ),
    );
  }
}
