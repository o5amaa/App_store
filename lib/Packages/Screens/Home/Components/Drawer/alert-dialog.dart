import 'package:flutter/material.dart';
import 'package:fprovid_app/Helpers/Language/Config/config-lang.dart';
import 'package:fprovid_app/Helpers/Language/generated/key-lang.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:fprovid_app/Helpers/Utils/path-images.dart';
import 'package:fprovid_app/Packages/Screens/Home/Components/Drawer/Components/custom-flag.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AlertDialogDrawer extends StatelessWidget {
  AlertDialogDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool _isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return AlertDialog(
      contentPadding: EdgeInsets.all(0),
      // ? رائس الرسالة
      title: Text(
        KeyLang.selectLanguage.tr(),
        textAlign: TextAlign.center,
      ),
      // ? المحتوى
      content: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            child: FlagDrawer(
              title: KeyLang.arabic,
              flag: PathImages.saudi,
              languag: ConfigLanguage.AR_LOCALE,
            ),
          ),
          Expanded(
            child: FlagDrawer(
              title: KeyLang.english,
              flag: PathImages.unitedStates,
              languag: ConfigLanguage.EN_LOCALE,
            ),
          ),
        ],
      ),
      // ? *****
      actions: [
        OutlinedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text(KeyLang.cancel.tr()),
          style: OutlinedButton.styleFrom(
            backgroundColor: Colors.transparent,
            primary: _isDarkMode ? Colors.white : Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.sp),
            ),
          ),
        )
      ],
    );
  }
}
