import 'package:flutter/material.dart';
import 'package:resume/core/widgets/buttons/gradient_icon_button.dart';

class BottomNavbarButton extends StatefulWidget {
  final Widget icon;
  final bool selected;
  final double size;
  final List<Color> iconColorGradient;
  final List<Color> selectedIconColorGradient;
  final Duration colorChangingDuration;
  final VoidCallback onTap;

  const BottomNavbarButton({
    super.key,
    required this.icon,
    required this.selected,
    required this.size,
    required this.iconColorGradient,
    required this.selectedIconColorGradient,
    required this.colorChangingDuration,
    required this.onTap,
  });

  @override
  State<BottomNavbarButton> createState() => _BottomNavbarButtonState();
}

class _BottomNavbarButtonState extends State<BottomNavbarButton> {
  late List<Color> _colors;
  @override
  void initState() {
    _setColors();
    super.initState();
  }

  @override
  void didUpdateWidget(covariant BottomNavbarButton oldWidget) {
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
    final iconTheme = IconThemeData(
      color: theme.colorScheme.onPrimary,
      size: 35,
    );
    return GradientIconButton(
      onTap: widget.onTap,
      size: widget.size,
      iconTheme: iconTheme,
      colors: _colors,
      icon: widget.icon,
    );
  }
}
