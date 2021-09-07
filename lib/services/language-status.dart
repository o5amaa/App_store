import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class StatusLanguage {
  static String getLocalCode({required BuildContext context}) {
    // ? جيب لي للغة التطبيق
    return EasyLocalization.of(context)?.currentLocale?.languageCode ?? 'en';
  }
}
