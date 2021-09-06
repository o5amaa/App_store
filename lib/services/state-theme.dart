import 'package:easy_dynamic_theme/easy_dynamic_theme.dart';
import 'package:flutter/material.dart';
import 'package:fprovid_app/Helpers/Language/generated/key-lang.dart';

class StateTheme {
  static String checkStateTheme(BuildContext context) {
    ThemeMode themeMode =
        EasyDynamicTheme.of(context).themeMode ?? ThemeMode.light;

    switch (themeMode.index) {
      case 0:
        return KeyLang.auto;
      case 1:
        return KeyLang.light;
      case 2:
        return KeyLang.dark;
      default:
        return KeyLang.auto;
    }
  }
}
