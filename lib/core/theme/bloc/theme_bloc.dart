import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:resume/constants/shared_preference_keys.dart';
import 'package:injectable/injectable.dart';
import 'package:resume/core/theme/models/app_theme.dart';
import 'package:resume/core/theme/models/theme_name.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'theme_bloc.freezed.dart';

@freezed
class ThemeEvent with _$ThemeEvent {
  const ThemeEvent._();

  const factory ThemeEvent.setLight() = _SetLightThemeEvent;

  const factory ThemeEvent.setDark() = _SetDarkThemeEvent;
}

@freezed
class ThemeState with _$ThemeState {
  const ThemeState._();

  @override
  ThemeData get theme => map(
        dark: (state) => state.theme,
        light: (state) => state.theme,
      );

  const factory ThemeState.dark({required ThemeData theme}) = DarkThemeState;
  const factory ThemeState.light({required ThemeData theme}) = LightThemeState;
}

@injectable
class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  final SharedPreferences _localstore;
  final AppTheme _theme;
  ThemeBloc({
    required final SharedPreferences localstore,
    required final AppTheme theme,
  })  : _localstore = localstore,
        _theme = theme,
        super(
          localstore.getString(SharedPreferenceKeys.THEME) == ThemeName.dark
              ? ThemeState.dark(theme: theme.darkTheme)
              : ThemeState.light(theme: theme.lightTheme),
        ) {
    on<ThemeEvent>(
      (event, emit) => event.map<Future<void>>(
        setLight: (event) => _setLightThemeHandler(event, emit),
        setDark: (event) => _setDarkThemeHandler(event, emit),
      ),
    );
  }

  Future<void> _setLightThemeHandler(_SetLightThemeEvent event, emit) async {
    try {
      _localstore.setString(SharedPreferenceKeys.THEME, ThemeName.light);

      emit(ThemeState.light(theme: _theme.lightTheme));
    } catch (e) {
      emit(ThemeState.dark(theme: _theme.darkTheme));
    }
  }

  Future<void> _setDarkThemeHandler(_SetDarkThemeEvent event, emit) async {
    try {
      _localstore.setString(SharedPreferenceKeys.THEME, ThemeName.dark);
      emit(ThemeState.dark(theme: _theme.darkTheme));
    } catch (e) {
      emit(ThemeState.dark(theme: _theme.lightTheme));
    }
  }
}
