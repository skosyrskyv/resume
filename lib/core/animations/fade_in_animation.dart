import 'package:flutter/material.dart';
import 'package:resume/utils/sequence_animation.dart';

class FadeInAnimation extends StatefulWidget {
  final Widget child;
  final Duration delay;
  const FadeInAnimation({
    super.key,
    this.delay = Duration.zero,
    required this.child,
  });

  @override
  State<FadeInAnimation> createState() => _FadeInAnimationState();
}

class _FadeInAnimationState extends State<FadeInAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late SequenceAnimation sequenceAnimation;
  late Animatable<double> fadeAnimation;
  late Animatable<double> moveAnimation;

  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
    );

    fadeAnimation = Tween<double>(begin: 0.0, end: 1.0);
    moveAnimation = Tween<double>(begin: -300.0, end: 0.0);

    final sequenceAnimationBuilder = SequenceAnimationBuilder()
      ..addAnimation(
        animatable: moveAnimation,
        from: const Duration(seconds: 0),
        to: const Duration(seconds: 2),
        curve: Curves.easeOutExpo,
        tag: 'move',
      )
      ..addAnimation(
        animatable: fadeAnimation,
        from: const Duration(milliseconds: 500),
        to: const Duration(milliseconds: 1500),
        tag: 'opacity',
      );

    sequenceAnimation = sequenceAnimationBuilder.animate(controller);
    controller.addListener(() {
      setState(() {});
    });

    _play();
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  void _play() async {
    await Future.delayed(widget.delay);
    if (mounted) {
      controller.forward();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset.fromDirection(0, sequenceAnimation['move'].value),
      child: Opacity(
        opacity: sequenceAnimation['opacity'].value,
        child: widget.child,
      ),
    );
  }
}
