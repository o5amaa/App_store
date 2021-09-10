import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:fprovid_app/Helpers/Language/generated/key-lang.dart';

class AppBarMyApp extends StatelessWidget implements PreferredSizeWidget {
  const AppBarMyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(KeyLang.myApps.tr()),
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);
}
