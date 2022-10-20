import 'package:flutter/material.dart';
import 'package:resume/core/navigator/models/custom_navigator.dart';
import 'package:resume/core/navigator/models/routes.dart';

final GlobalKey<NavigatorState> kNavigatorKey = GlobalKey<NavigatorState>();

class NavigatorWidget extends StatelessWidget {
  const NavigatorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: kNavigatorKey,
      initialRoute: Routes.HOME,
      onGenerateRoute: CustomNavigator.router.generator,
    );
  }
}
