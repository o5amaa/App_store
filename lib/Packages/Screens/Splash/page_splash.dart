import 'dart:async';
import 'package:easy_localization/easy_localization.dart';

import 'package:flutter/material.dart';
import 'package:fprovid_app/Helpers/Language/generated/key-lang.dart';
import 'package:fprovid_app/Helpers/Theme/app_colors.dart';
import 'package:fprovid_app/Helpers/Utils/path-images.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fprovid_app/Packages/Screens/Home/page_home.dart';

class PageSplash extends StatefulWidget {
  static const String id = 'PageSplash';
  @override
  _PageSplashState createState() => _PageSplashState();
}

class _PageSplashState extends State<PageSplash> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      // Navigator.pushNamed(context, PageHome.id);
      Navigator.pushReplacementNamed(context, PageHome.id);
    });
    print('initState');
  }

  @override
  void dispose() {
    print('dispose');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          // color: Colors.amber,
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Container(
              //   child: Image.asset(
              //     PathImages.picProfile, width: 135.w, height: 135.h,
              //     // width: MediaQuery.of(context).size.width / 2.6,
              //   ),
              // ),
              CircleAvatar(
                backgroundColor: Colors.transparent,
                backgroundImage: AssetImage(PathImages.picSplash),
                maxRadius: 86.r,
                minRadius: 58.r,
                // radius: 60.r,
              ),
              SizedBox(height: 10),
              Text(
                KeyLang.appName.tr(),
                style: Theme.of(context).textTheme.headline5,
                // textAlign: TextAlign.center,
              ),
              Divider(
                color: AppColors.myWhite,
                thickness: 1.5.h,
                indent: 85.w,
                endIndent: 85.w,
              )
            ],
          ),
        ),
      ),
    );
  }
}
