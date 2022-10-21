import 'package:flutter/material.dart';

class AppBarButton extends StatelessWidget {
  final VoidCallback? onTap;
  final Widget? child;

  const AppBarButton({
    super.key,
    this.onTap,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: SizedBox(
        height: 50,
        width: 50,
        child: Center(child: child),
      ),
    );
  }
}
