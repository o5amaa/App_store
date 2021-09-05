import 'package:flutter/material.dart';
import 'package:fprovid_app/Helpers/Language/generated/key-lang.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:fprovid_app/Helpers/Utils/path-images.dart';
import 'package:fprovid_app/Packages/Screens/Home/Components/Drawer/custom-flag.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AlertDialogDrawer extends StatelessWidget {
  const AlertDialogDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
          FlagDrawer(title: KeyLang.arabic, flag: PathImages.saudi),
          FlagDrawer(title: KeyLang.english, flag: PathImages.unitedStates),
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
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.sp),
            ),
          ),
        )
      ],
    );
  }
}
