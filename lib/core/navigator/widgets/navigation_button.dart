import 'package:flutter/material.dart';

class NavigationButton extends StatefulWidget {
  final Widget icon;
  final bool selected;
  final double diameter;
  final Color iconColor;
  final Color selectedIconColor;
  final Duration colorChangingDuration;
  final VoidCallback onTap;

  const NavigationButton({
    super.key,
    required this.icon,
    required this.selected,
    required this.diameter,
    required this.iconColor,
    required this.selectedIconColor,
    required this.colorChangingDuration,
    required this.onTap,
  });

  @override
  State<NavigationButton> createState() => _NavigationButtonState();
}

class _NavigationButtonState extends State<NavigationButton> {
  late Color _color;

  @override
  void initState() {
    _setColor();
    super.initState();
  }

  @override
  void didUpdateWidget(covariant NavigationButton oldWidget) {
    _delayedColorUpdate();
    super.didUpdateWidget(oldWidget);
  }

  void _delayedColorUpdate() async {
    await Future.delayed(widget.colorChangingDuration);
    _setColor();
  }

  void _setColor() {
    _color = widget.selected ? widget.selectedIconColor : widget.iconColor;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
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
            color: _color,
          ),
          child: widget.icon,
        ),
      ),
    );
  }
}
