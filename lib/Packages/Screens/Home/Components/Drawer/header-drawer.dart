import 'package:flutter/material.dart';
import 'package:fprovid_app/Helpers/Language/generated/key-lang.dart';
import 'package:fprovid_app/Helpers/Theme/app_colors.dart';
import 'package:fprovid_app/Helpers/Utils/path-images.dart';
import 'package:fprovid_app/Packages/Widgets/Cach-image/imaga-user.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HeaderDrawer extends StatelessWidget {
  const HeaderDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _sw = MediaQuery.of(context).size.width;
    return SizedBox(
      width: _sw,
      child: DrawerHeader(
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(color: AppColors.myGreen),
          ),
        ),
        child: Column(
          children: [
            // * Image User  ********
            ImageUser(
              imageUrl: PathImages.imageProfile,
              radius: 40,
              sizeLoading: 30,
            ),
            SizedBox(height: 6.h),
            // * Text User name *******
            Text(
              KeyLang.nameUser.tr(),
            ),
          ],
        ),
      ),
    );
  }
}
