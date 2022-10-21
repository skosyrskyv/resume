import 'package:flutter/material.dart';

class NavigationButton extends StatefulWidget {
  final Widget icon;
  final bool selected;
  final double diameter;
  final List<Color> iconColorGradient;
  final List<Color> selectedIconColorGradient;
  final Duration colorChangingDuration;
  final VoidCallback onTap;

  const NavigationButton({
    super.key,
    required this.icon,
    required this.selected,
    required this.diameter,
    required this.iconColorGradient,
    required this.selectedIconColorGradient,
    required this.colorChangingDuration,
    required this.onTap,
  });

  @override
  State<NavigationButton> createState() => _NavigationButtonState();
}

class _NavigationButtonState extends State<NavigationButton> {
  late List<Color> _colors;

  @override
  void initState() {
    _setColors();
    super.initState();
  }

  @override
  void didUpdateWidget(covariant NavigationButton oldWidget) {
    _delayedColorsUpdate();
    super.didUpdateWidget(oldWidget);
  }

  void _delayedColorsUpdate() async {
    await Future.delayed(widget.colorChangingDuration);
    _setColors();
  }

  void _setColors() {
    if (mounted) {
      _colors = widget.selected
          ? widget.selectedIconColorGradient
          : widget.iconColorGradient;
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        height: widget.diameter,
        width: widget.diameter,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
        ),
        child: IconTheme(
          data: IconThemeData(
            color: theme.colorScheme.onPrimary,
            size: 35,
          ),
          child: ShaderMask(
            shaderCallback: (Rect bounds) {
              return LinearGradient(
                colors: _colors,
              ).createShader(bounds);
            },
            child: widget.icon,
          ),
        ),
      ),
    );
  }
}
