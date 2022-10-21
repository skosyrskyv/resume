import 'package:flutter/material.dart';

class Screen extends StatelessWidget {
  final Widget? body;
  const Screen({
    super.key,
    this.body,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.colorScheme.background,
      body: body,
    );
  }
}
