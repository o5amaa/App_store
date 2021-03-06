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
  static Color myRed = _colorFromHex('#B41A0F');
  static Color myYellow = _colorFromHex('#FFBB00');

  //* Color Light .. 0xFF
  static Color blueDetailsBG = _colorFromHex('#a2e7f5');
  static Color mineColorLight = _colorFromHex('#756B0E');
  static Color parTitleColorLight = _colorFromHex('#2E2A22');
  static Color bodyTitleColorLight = _colorFromHex('#49402F');
  static Color lightModeInstallBtn = _colorFromHex('#456369');
  static Color lightModeUnInstallBtn = _colorFromHex('#e95f44');
  static Color lightModeToast = _colorFromHex('#90ee02');

  static Color profileLoadingLight = _colorFromHex('#0A4091');
  // *
  static Color mbColorLight = _colorFromHex('#FFBB00');

  //* Color Dark .. 0xFF
  static Color mineColorDark = _colorFromHex('#3B3529');
  static Color darkMode = _colorFromHex('#3A3B3C');
  static Color darkModeBodyDetails = _colorFromHex('#303030');
  static Color darkModeCardDetails = _colorFromHex('#484848');
  static Color darkModeUnInstallBtn = _colorFromHex('#FF0266');
  static Color darkModeToast = _colorFromHex('#BB86FC');

  static Color darkModeInstallBtn = _colorFromHex('#BB86FC');
}
