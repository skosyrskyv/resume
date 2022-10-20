import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:injectable/injectable.dart';
import 'package:resume/core/theme/models/app_color_scheme.dart';
import 'package:resume/core/theme/models/app_text_themes.dart';
import 'package:resume/core/theme/models/color_pallet.dart';

abstract class AppTheme {
  const AppTheme({
    required AppColorScheme colorScheme,
    required AppTextTheme appTextTheme,
  });

  ThemeData get lightTheme;
  ThemeData get darkTheme;
}

@Injectable(as: AppTheme)
class BaseAppTheme implements AppTheme {
  final AppColorScheme _colorScheme;
  final AppTextTheme _textScheme;

  BaseAppTheme({
    required AppColorScheme colorScheme,
    required AppTextTheme appTextTheme,
  })  : _colorScheme = colorScheme,
        _textScheme = appTextTheme;

  static final InputDecorationTheme _lightInputDecoration =
      InputDecorationTheme(
    contentPadding: const EdgeInsets.only(
      left: 16,
    ),
    fillColor: ColorPallet.white,
    filled: true,
    isCollapsed: true,
    constraints: const BoxConstraints(maxHeight: 40),
    border: OutlineInputBorder(
      borderSide: BorderSide.none,
      borderRadius: BorderRadius.circular(10),
    ),
  );

  static final InputDecorationTheme _darkInputDecoration = InputDecorationTheme(
    contentPadding: const EdgeInsets.only(
      left: 16,
    ),
    fillColor: ColorPallet.white,
    filled: true,
    isCollapsed: true,
    border: OutlineInputBorder(
      borderSide: BorderSide.none,
      borderRadius: BorderRadius.circular(10),
    ),
  );

  static final _checkBoxTheme = CheckboxThemeData(
    fillColor: MaterialStateProperty.all<Color>(ColorPallet.purple),
  );

  static const _appBarTheme = AppBarTheme(
    systemOverlayStyle: SystemUiOverlayStyle(
      systemNavigationBarIconBrightness: Brightness.dark,
    ),
  );

  @override
  ThemeData get lightTheme => ThemeData(
        brightness: Brightness.light,
        primaryColor: _colorScheme.lightScheme.primary,
        canvasColor: _colorScheme.lightScheme.primary,
        colorScheme: _colorScheme.lightScheme,
        textTheme: _textScheme.lightThemeTextThemes,
        fontFamily: GoogleFonts.roboto().fontFamily,
        inputDecorationTheme: _lightInputDecoration,
        checkboxTheme: _checkBoxTheme,
        appBarTheme: _appBarTheme,
        scaffoldBackgroundColor: ColorPallet.background,
      );

  @override
  ThemeData get darkTheme => ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
        colorScheme: _colorScheme.darkScheme,
        textTheme: _textScheme.darkThemeTextThemes,
        fontFamily: GoogleFonts.roboto().fontFamily,
        inputDecorationTheme: _darkInputDecoration,
      );
}
