import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:resume/core/navigator/cubit/navigator_cubit.dart';
import 'package:resume/core/navigator/models/custom_navigator.dart';
import 'package:resume/core/navigator/models/routes.dart';

final GlobalKey<NavigatorState> _navigatorKey = GlobalKey<NavigatorState>();

class AppNavigator extends StatelessWidget {
  const AppNavigator({super.key});

  /// Needs for pushing the last screen after the MaterialApp rebuilding.
  /// The MaterialApp rebuilds after Locale changing.
  String _initialRoute(index) {
    switch (index) {
      case 0:
        return Routes.HOME;
      case 1:
        return Routes.PROJECTS;
      case 2:
        return Routes.ABOUT;
      case 3:
        return Routes.CONTACTS;
      default:
        return Routes.HOME;
    }
  }

  void _navigationListener(BuildContext context, int index) {
    switch (index) {
      case 0:
        _navigate(Routes.HOME);
        break;
      case 1:
        _navigate(Routes.PROJECTS);
        break;
      case 2:
        _navigate(Routes.ABOUT);
        break;
      case 3:
        _navigate(Routes.CONTACTS);
        break;
      default:
        _navigate(Routes.HOME);
    }
  }

  void _navigate(String route) {
    Navigator.of(_navigatorKey.currentContext!).pushNamedAndRemoveUntil(
      route,
      (route) => route.isFirst,
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NavigatorCubit, int>(
      listener: _navigationListener,
      listenWhen: (previous, current) => previous != current,
      buildWhen: (previous, current) => false,
      builder: (context, index) {
        return Navigator(
          key: _navigatorKey,
          initialRoute: _initialRoute(index),
          onGenerateRoute: CustomNavigator.router.generator,
        );
      },
    );
  }
}
