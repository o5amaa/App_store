import 'package:flutter/material.dart';

class AppColors {
  // * Convert Color from Hex to type Flutter 0xFFa2e7f5
  static Color _colorFromHex(String hexColor) {
    final _color = hexColor.replaceAll('#', ''); //  #ffffff -> ffffff
    return Color(int.parse('FF$_color', radix: 16)); //  0-9 ABCDEF
  }

// todo :: Color Apps  0xFF
  // static Color colorAppBar = _colorFromHex('#053601');
  static Color myBlakGren = _colorFromHex('#545F54');

  //* Colors noth 0xFF
  static Color myWhite = _colorFromHex('#ffffff');
  static Color myBlack = _colorFromHex('#000000');
  static Color myGray = _colorFromHex('#A1A1A1');
  static Color myBlue = _colorFromHex('#216E38');

  //* Color Light .. 0xFF
  static Color mineColorLight = _colorFromHex('#E9DA50');

  //* Color Dark .. 0xFF
  static Color mineColorDark = _colorFromHex('#B37C07');
}
