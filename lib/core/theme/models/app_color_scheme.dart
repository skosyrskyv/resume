import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:resume/core/theme/models/color_pallet.dart';

abstract class AppColorScheme {
  ColorScheme get lightScheme;
  ColorScheme get darkScheme;
}

@Injectable(as: AppColorScheme)
class BaseAppColorScheme implements AppColorScheme {
  BaseAppColorScheme({required ColorPallet colorPallet});
  @override
  ColorScheme get lightScheme => const ColorScheme(
        brightness: Brightness.light,
        primary: ColorPallet.purple,
        onPrimary: ColorPallet.white,
        primaryContainer: Color(0xFFCCDCE7),
        onPrimaryContainer: Color(0xFF003E6E),
        secondary: ColorPallet.blue,
        onSecondary: Color(0xFFFFFFFF),
        secondaryContainer: Color(0xFFCFEBFF),
        onSecondaryContainer: Color(0xFF0A7ACC),
        tertiary: Color(0xFF7236CA),
        onTertiary: Color(0xFFFFFFFF),
        tertiaryContainer: Color(0xFFE3D7F4),
        onTertiaryContainer: Color(0xFF2E1651),
        error: Color(0xFFFE5860),
        onError: Color(0xFFFFFFFF),
        errorContainer: Color(0xFFFFDEDF),
        onErrorContainer: Color(0xFF662326),
        background: ColorPallet.background,
        onBackground: ColorPallet.greyDark,
        surface: ColorPallet.white,
        onSurface: ColorPallet.black,
      );

  @override
  ColorScheme get darkScheme => const ColorScheme(
        brightness: Brightness.dark,
        primary: ColorPallet.purpleDark,
        onPrimary: ColorPallet.white,
        primaryContainer: Color(0xFFCCDCE7),
        onPrimaryContainer: Color(0xFF003E6E),
        secondary: ColorPallet.blue,
        onSecondary: ColorPallet.white,
        secondaryContainer: Color(0xFFD6E6F3),
        onSecondaryContainer: Color(0xFF276A9D),
        tertiary: Color(0xFF7236CA),
        onTertiary: Color(0xFFFFFFFF),
        tertiaryContainer: Color(0xFFE3D7F4),
        onTertiaryContainer: Color(0xFF2E1651),
        error: Color(0xFFFE5860),
        onError: Color(0xFFFFFFFF),
        errorContainer: Color(0xFFFFDEDF),
        onErrorContainer: Color(0xFF662326),
        background: ColorPallet.black,
        onBackground: Color(0xFF343434),
        surface: Color(0xFFFFFFFF),
        onSurface: Color(0xFF343434),
      );
}
