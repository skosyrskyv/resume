import 'package:flutter/material.dart';
import 'package:funvas/funvas.dart';
import 'package:resume/core/animations/animated_background.dart';
import 'package:resume/core/widgets/screen.dart';
import 'package:resume/features/home/presentation/widgets/animated_greeting_text.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

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
            child: AnimatedGreetingText(key: UniqueKey()),
          ),
        ],
      ),
    );
  }
}
