import 'package:flutter/material.dart';

/// The parent scaffold.
class AppScaffold extends StatelessWidget {
  final Widget? body;
  final PreferredSizeWidget? appBar;
  final Widget? bottomNavigationBar;
  const AppScaffold({
    super.key,
    this.body,
    this.appBar,
    this.bottomNavigationBar,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: appBar,
      extendBody: true,
      extendBodyBehindAppBar: true,
      bottomNavigationBar: bottomNavigationBar,
      backgroundColor: colorScheme.background,
      body: body,
    );
  }
}
