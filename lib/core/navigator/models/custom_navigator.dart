import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:resume/core/navigator/models/routes.dart';
import 'package:resume/features/about/presentation/screen/about.dart';
import 'package:resume/features/contacts/presentation/screen/contacts.dart';
import 'package:resume/features/home/presentation/screen/home.dart';
import 'package:resume/features/projects/presentation/screen/projects.dart';

class CustomNavigator {
  static FluroRouter router = FluroRouter();

// HOME SCREEN
  static final Handler _homeHandler = Handler(
    handlerFunc: (
      BuildContext? context,
      Map<String, List<String>> params,
    ) {
      return const Home();
    },
  );

// ABOUT SCREEN
  static final Handler _aboutHandler = Handler(
    handlerFunc: (
      BuildContext? context,
      Map<String, List<String>> params,
    ) {
      return const About();
    },
  );

  // CONTACTS SCREEN
  static final Handler _contactsHandler = Handler(
    handlerFunc: (
      BuildContext? context,
      Map<String, List<String>> params,
    ) {
      return const Contacts();
    },
  );

  // PROJECTS SCREEN
  static final Handler _projectsHandler = Handler(
    handlerFunc: (
      BuildContext? context,
      Map<String, List<String>> params,
    ) {
      return const Projects();
    },
  );

  static void setupRouter() {
    // HOME SCREEN
    router.define(
      Routes.HOME,
      handler: _homeHandler,
      transitionType: TransitionType.fadeIn,
      transitionDuration: const Duration(milliseconds: 200),
    );

    // ABOUT SCREEN
    router.define(
      Routes.ABOUT,
      handler: _aboutHandler,
      transitionType: TransitionType.fadeIn,
      transitionDuration: const Duration(milliseconds: 200),
    );

    // CONTACTS SCREEN
    router.define(
      Routes.CONTACTS,
      handler: _contactsHandler,
      transitionType: TransitionType.fadeIn,
      transitionDuration: const Duration(milliseconds: 200),
    );

    // PROJECTS SCREEN
    router.define(
      Routes.PROJECTS,
      handler: _projectsHandler,
      transitionType: TransitionType.fadeIn,
      transitionDuration: const Duration(milliseconds: 200),
    );
  }
}
