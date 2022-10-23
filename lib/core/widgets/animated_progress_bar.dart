import 'package:flutter/material.dart';

class AnimatedProgressBar extends StatefulWidget {
  final double progress;
  final Duration animationDuration;
  final Duration animationStartDelay;
  const AnimatedProgressBar({
    super.key,
    this.progress = 100,
    this.animationDuration = const Duration(seconds: 2),
    this.animationStartDelay = Duration.zero,
  }) : assert(
          progress <= 100 && progress >= 0,
          "Invalid value"
          "Progress is a percent value."
          "A value from 0 to 100 is valid",
        );

  @override
  State<AnimatedProgressBar> createState() => _AnimatedProgressBarState();
}

class _AnimatedProgressBarState extends State<AnimatedProgressBar>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  late Animation<double> _tweenProgress;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: widget.animationDuration,
    );

    _tweenProgress = Tween<double>(
      begin: 0,
      end: widget.progress,
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.ease,
      ),
    );

    _controller.addListener(() {
      setState(() {});
    });

    _play();
    super.initState();
  }

  void _play() async {
    await Future.delayed(widget.animationStartDelay);
    if (mounted) {
      _controller.forward();
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return LayoutBuilder(builder: (context, constraints) {
      return Container(
        height: 10,
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
        child: Stack(
          children: [
            Positioned.fill(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2),
                  gradient: LinearGradient(colors: [
                    theme.colorScheme.secondary,
                    theme.colorScheme.primary,
                  ]),
                ),
              ),
            ),
            Positioned(
              top: 0,
              bottom: 0,
              right: 0,
              left: constraints.maxWidth / 100 * _tweenProgress.value,
              child: Container(
                color: theme.colorScheme.background,
              ),
            ),
          ],
        ),
      );
    });
  }
}
