// ignore_for_file: prefer_void_to_null

import 'dart:async';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:resume/app/bloc/app_blocs_provider.dart';
import 'package:resume/app/bloc_observer/bloc_observer.dart';
import 'package:resume/app/runner.config.dart';
import 'package:resume/core/navigator/models/custom_navigator.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'app.dart';

final getIt = GetIt.instance;

class Runner {
  static Future<void> run() async {
    await _initializeFlutterPluginsAndDependencies();
    runZonedGuarded(_runApp, _errorHandler);
  }

  static Future<void> _initializeFlutterPluginsAndDependencies() async {
    Bloc.observer = BlocObserverOverrides();
    WidgetsFlutterBinding.ensureInitialized();
    await EasyLocalization.ensureInitialized();
    CustomNavigator.setupRouter();
    await configureDependencies();
  }

  static _runApp() async {
    runApp(const AppBlocsProvider(child: App()));
  }

  static Future<void> _errorHandler(exception, stacktrace) async {
    // TODO: Add sentry.
  }
}

// GET IT INITIALIZATION
@InjectableInit(
  initializerName: r'$initGetIt',
  preferRelativeImports: true,
  asExtension: false,
)
@module
abstract class InjectableModule {
  @preResolve
  @singleton
  Future<SharedPreferences> get secureStore async =>
      SharedPreferences.getInstance();
}

Future<void> configureDependencies() async => await $initGetIt(getIt);
