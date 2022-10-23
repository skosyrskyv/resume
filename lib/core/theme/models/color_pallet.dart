import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@injectable
class ColorPallet {
  static const Color black = Color.fromARGB(255, 0, 0, 0);
  static const Color white = Color.fromARGB(255, 255, 255, 255);
  static const Color greyLight = Color(0xFF5e5e5e);
  static const Color greyDark = Color.fromARGB(255, 30, 30, 30);
  static const Color background = Color(0xFFF7F7F7);
  static const Color purple = kPurple;
  static const Color purpleDark = Color.fromARGB(255, 108, 13, 125);

  static const Color blue = Color.fromARGB(255, 87, 72, 255);
}

const MaterialColor kPurple = MaterialColor(
  0xFF9c27b0,
  <int, Color>{
    50: Color(0xFFf3e5f5),
    100: Color(0xFFe1bee7),
    200: Color(0xFFce93d8),
    300: Color(0xFFba68c8),
    400: Color(0xFFab47bc),
    500: Color(0xFF9c27b0),
    600: Color(0xFF8e24aa),
    700: Color(0xFF7b1fa2),
    800: Color(0xFF6a1b9a),
    900: Color(0xFF4a148c),
  },
);
