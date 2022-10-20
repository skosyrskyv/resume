import 'package:flutter/cupertino.dart';

const _russianLocale = Locale('ru', 'RU');
const _englishLocale = Locale('us', 'US');

class AppLocalizations {
  static const Locale russian = _russianLocale;
  static const Locale english = _englishLocale;

  static const List<Locale> supportedLocales = [_russianLocale, _englishLocale];

  static const path = 'assets/translations/languages.csv';
}
