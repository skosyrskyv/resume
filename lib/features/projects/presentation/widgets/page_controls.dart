import 'package:flutter/material.dart';
import 'package:resume/utils/spacers.dart';

enum ArrowDirection {
  left,
  right,
}

class PageControls extends StatelessWidget {
  final PageController controller;
  const PageControls({
    super.key,
    required this.controller,
  });

  final Duration duration = const Duration(milliseconds: 300);
  final curve = Curves.easeOutExpo;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _ArrowButton(
          direction: ArrowDirection.left,
          onTap: () {
            controller.previousPage(duration: duration, curve: curve);
          },
        ),
        HorizontalSpacer.w4(),
        _ArrowButton(
          direction: ArrowDirection.right,
          onTap: () {
            controller.nextPage(duration: duration, curve: curve);
          },
        ),
      ],
    );
  }
}

class _ArrowButton extends StatelessWidget {
  final VoidCallback onTap;
  final ArrowDirection direction;
  const _ArrowButton({
    required this.direction,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    IconData buildIcon() {
      switch (direction) {
        case ArrowDirection.left:
          return Icons.arrow_back_ios_new_rounded;
        case ArrowDirection.right:
          return Icons.arrow_forward_ios_rounded;
        default:
          return Icons.arrow_back_ios_new_rounded;
      }
    }

    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: theme.colorScheme.secondary,
          ),
          child: Center(
            child: Icon(
              buildIcon(),
              color: theme.colorScheme.onPrimary,
              size: 25,
            ),
          ),
        ),
      ),
    );
  }
}
