import 'package:flutter/material.dart';

class PageControllerProvider extends InheritedWidget {
  final PageController controller;

  const PageControllerProvider({
    super.key,
    required this.controller,
    required super.child,
  });

  static PageControllerProvider? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<PageControllerProvider>();
  }

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return oldWidget != this;
  }
}
