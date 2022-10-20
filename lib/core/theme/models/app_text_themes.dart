import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

abstract class AppTextTheme {
  TextTheme get lightThemeTextThemes;
  TextTheme get darkThemeTextThemes;
}

@Injectable(as: AppTextTheme)
class BaseAppTextTheme implements AppTextTheme {
  @override
  TextTheme get lightThemeTextThemes => const TextTheme(
        displayLarge: _displayLarge,
        displayMedium: _displayMedium,
        displaySmall: _displaySmall,
        headlineLarge: _headlineLarge,
        headlineMedium: _headlineMedium,
        headlineSmall: _headlineSmall,
        titleLarge: _titleLarge,
        titleMedium: _titleMedium,
        titleSmall: _titleSmall,
        bodyLarge: _bodyLarge,
        bodyMedium: _bodyMedium,
        bodySmall: _bodySmall,
        labelLarge: _labelLarge,
        labelMedium: _labelMedium,
        labelSmall: _labelSmall,
      );

  @override
  TextTheme get darkThemeTextThemes => const TextTheme(
        displayLarge: _displayLarge,
        displayMedium: _displayMedium,
        displaySmall: _displaySmall,
        headlineLarge: _headlineLarge,
        headlineMedium: _headlineMedium,
        headlineSmall: _headlineSmall,
        titleLarge: _titleLarge,
        titleMedium: _titleMedium,
        titleSmall: _titleSmall,
        bodyLarge: _bodyLarge,
        bodyMedium: _bodyMedium,
        bodySmall: _bodySmall,
        labelLarge: _labelLarge,
        labelMedium: _labelMedium,
        labelSmall: _labelSmall,
      );
  // DISPLAY
  static const _displayLarge =
      TextStyle(fontSize: 57, fontWeight: FontWeight.w400);

  static const _displayMedium =
      TextStyle(fontSize: 45, fontWeight: FontWeight.w600);

  static const _displaySmall = TextStyle(
    fontSize: 36,
    fontWeight: FontWeight.w600,
  );

  // HEADLINE
  static const _headlineLarge =
      TextStyle(fontSize: 32, fontWeight: FontWeight.w600);

  static const _headlineMedium =
      TextStyle(fontSize: 28, fontWeight: FontWeight.w600);

  static const _headlineSmall =
      TextStyle(fontSize: 24, fontWeight: FontWeight.w600);

  // TITLE
  static const _titleLarge =
      TextStyle(fontSize: 22, fontWeight: FontWeight.w600);

  static const _titleMedium =
      TextStyle(fontSize: 20, fontWeight: FontWeight.w600);

  static const _titleSmall =
      TextStyle(fontSize: 18, fontWeight: FontWeight.w600);

  // BODY
  static const _bodyLarge =
      TextStyle(fontSize: 16, fontWeight: FontWeight.normal);

  static const _bodyMedium = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.normal,
  );

  static const _bodySmall =
      TextStyle(fontSize: 12, fontWeight: FontWeight.normal);

  // LABEL
  static const _labelLarge =
      TextStyle(fontSize: 16, fontWeight: FontWeight.w500);
  static const _labelMedium =
      TextStyle(fontSize: 14, fontWeight: FontWeight.w500);
  static const _labelSmall =
      TextStyle(fontSize: 12, fontWeight: FontWeight.w500);
}
