import 'package:flutter/material.dart';
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

  @override
  ThemeData get lightTheme => ThemeData(
        brightness: Brightness.light,
        primaryColor: _colorScheme.lightScheme.primary,
        canvasColor: _colorScheme.lightScheme.primary,
        colorScheme: _colorScheme.lightScheme,
        textTheme: _textScheme.lightThemeTextThemes,
        fontFamily: GoogleFonts.roboto().fontFamily,
        scaffoldBackgroundColor: ColorPallet.background,
      );

  @override
  ThemeData get darkTheme => ThemeData(
        brightness: Brightness.dark,
        primaryColor: _colorScheme.darkScheme.primary,
        canvasColor: _colorScheme.darkScheme.primary,
        colorScheme: _colorScheme.darkScheme,
        textTheme: _textScheme.darkThemeTextThemes,
        fontFamily: GoogleFonts.roboto().fontFamily,
      );
}
