import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:funvas/funvas.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:resume/core/widgets/animated_background.dart/animated_background.dart';
import 'package:resume/core/widgets/screen.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final colorizeColors = [
      theme.colorScheme.secondary,
      theme.colorScheme.primary,
    ];

    final colorizeTextStyle = TextStyle(
      fontSize: 80.0,
      fontFamily: GoogleFonts.russoOne().fontFamily,
      fontWeight: FontWeight.w900,
    );

    final List<String> texts = [
      'greeting_text',
      'about_app_text',
      'app_abilities_text',
    ];

    return Screen(
      body: Stack(
        children: [
          Positioned.fill(
            child: FunvasContainer(
              funvas: AnimatedBackground(
                brightness: theme.brightness,
                size: MediaQuery.of(context).size,
              ),
            ),
          ),
          Center(
            child: Container(
              margin: const EdgeInsets.all(32),
              child: FittedBox(
                child: AnimatedTextKit(
                  animatedTexts: [
                    ...texts.map(
                      (text) => ColorizeAnimatedText(
                        text.tr().replaceAll('/n', '\n'),
                        textStyle: colorizeTextStyle,
                        colors: colorizeColors,
                      ),
                    ),
                  ],
                  isRepeatingAnimation: true,
                  repeatForever: true,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
