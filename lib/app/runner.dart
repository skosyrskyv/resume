// ignore_for_file: prefer_void_to_null

import 'dart:async';

import 'package:flutter/foundation.dart';
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
    runZonedGuarded(_runZonedBlocObserver, _errorHandler);
  }

  static Future<void> _initializeFlutterPluginsAndDependencies() async {
    WidgetsFlutterBinding.ensureInitialized();
    CustomNavigator.setupRouter();
    await configureDependencies();
  }

  static _runZonedBlocObserver() async {
    Bloc.observer = BlocObserverOverrides();
    return runZonedGuarded(
      () => runApp(const AppBlocsProvider(child: App())),
      _errorHandler,
    );
  }

  static Future<void> _errorHandler(exception, stacktrace) async {
    // TODO: Add sentry.
    print(exception);
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
