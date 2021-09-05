import 'package:flutter/material.dart';
import 'package:fprovid_app/Helpers/Language/generated/key-lang.dart';
import 'package:fprovid_app/Helpers/Theme/app_colors.dart';
import 'package:fprovid_app/Helpers/Utils/path-images.dart';
import 'package:fprovid_app/Packages/Widgets/Cach-image/imaga-user.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppBarCustomm extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        KeyLang.appName.tr(),
        style: Theme.of(context)
            .textTheme
            .headline5!
            .copyWith(color: AppColors.myWhite),
      ),
      // leadingWidth: 33,
      actions: [
        Padding(
          padding: EdgeInsets.all(4.5.w),
          child: ImageUser(
            imageUrl: PathImages.imageProfile,
            radius: 23,
            sizeLoading: 23,
          ),
        ),
      ],
      bottom: TabBar(
        isScrollable: true,
        indicatorColor: AppColors.myGreen,
        tabs: <Tab>[
          Tab(text: KeyLang.newsTab.tr()),
          Tab(text: KeyLang.gamesTab.tr()),
          Tab(text: KeyLang.pramiumTab.tr()),
          Tab(text: KeyLang.mediatabTab.tr()),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(100);
}

// ?Tab(
// * icon: Icon(Icons.ac_unit_sharp),
//* child: Row(
//*   // crossAxisAlignment: CrossAxisAlignment.,
//*   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//**    children: [
//*     Text('Tist1'),
//*     Icon(Icons.access_alarms),
//**  ],
//* ),
// ? ),
