import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@injectable
class ColorPallet {
  static const Color black = Color.fromARGB(255, 0, 0, 0);
  static const Color white = Color.fromARGB(255, 255, 255, 255);
  static const Color background = Color(0xFFF7F7F7);
  static const MaterialColor primary = _primary;
}

const MaterialColor _primary = MaterialColor(
  _bluePrimaryValue,
  <int, Color>{
    50: Color(0xFF00101B),
    100: Color(0xFF00101B),
    200: Color(0xFF001F37),
    300: Color(0xFF002F52),
    400: Color(0xFF003E6E),
    500: Color(_bluePrimaryValue),
    600: Color(0xFF3371A1),
    700: Color(0xFF6695B8),
    800: Color(0xFF99B8D0),
    900: Color(0xFFCCDCE7),
  },
);
const int _bluePrimaryValue = 0xFF004E89;
