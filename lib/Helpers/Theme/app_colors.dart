import 'package:flutter/material.dart';

class AppColors {
  // * Convert Color from Hex to type Flutter 0xFFa2e7f5
  static Color _colorFromHex(String hexColor) {
    final _color = hexColor.replaceAll('#', ''); //  #ffffff -> ffffff
    return Color(int.parse('FF$_color', radix: 16)); //  0-9 ABCDEF
  }

// * ********* My Color Apps  0xFF
  static Color myBlakGren = _colorFromHex('#545F54');

  //* Colors noth 0xFF
  static Color myWhite = _colorFromHex('#ffffff');
  static Color myBlack = _colorFromHex('#000000');
  static Color myGray = _colorFromHex('#A1A1A1');
  static Color myGreen = _colorFromHex('#216E38');

  //* Color Light .. 0xFF
  static Color mineColorLight = _colorFromHex('#756B0E');
  static Color parTitleColorLight = _colorFromHex('#2E2A22');
  static Color bodyTitleColorLight = _colorFromHex('#49402F');

  static Color profileLoadingLight = _colorFromHex('#0A4091');
  // *
  static Color mbColorLight = _colorFromHex('#FFBB00');

  //* Color Dark .. 0xFF
  static Color mineColorDark = _colorFromHex('#3B3529');
}
