import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:resume/core/navigator/cubit/bottom_navigator_cubit.dart';
import 'package:resume/core/navigator/models/custom_navigator.dart';
import 'package:resume/core/navigator/models/routes.dart';

final GlobalKey<NavigatorState> kNavigatorKey = GlobalKey<NavigatorState>();

class NavigatorWidget extends StatelessWidget {
  const NavigatorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    /// Needs for pushing the last screen after the MaterialApp rebuilding.
    /// The MaterialApp rebuilds after Locale changing.
    String initialRoute(index) {
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

    return BlocBuilder<BottomNavigatorCubit, int>(
      builder: (context, index) {
        return Navigator(
          key: kNavigatorKey,
          initialRoute: initialRoute(index),
          onGenerateRoute: CustomNavigator.router.generator,
        );
      },
    );
  }
}
