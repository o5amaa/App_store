import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fprovid_app/Helpers/Language/generated/key-lang.dart';
import 'package:fprovid_app/Helpers/Theme/app_colors.dart';
import 'package:fprovid_app/Packages/Screens/Details/Model/template.dart';
import 'package:fprovid_app/Packages/Widgets/Cach-image/images-details.dart';

import 'card-details.dart';

List images = [
  "https://i.gadgets360cdn.com/large/Facebook_messenger_1555074792519.jpg",
  "https://cdn.wccftech.com/wp-content/uploads/2020/04/Facebook-Dark-Mode-for-ios.jpg"
];

class DetailsApp extends StatelessWidget {
  DetailsApp({required Template data}) : _data = data;
  final Template _data;

  @override
  Widget build(BuildContext context) {
    double _sw = MediaQuery.of(context).size.width;
    bool _isDarkMode = Theme.of(context).brightness == Brightness.dark;
    final String _storage = '${_data.size!} ${KeyLang.megabyte.tr()}';
    return Expanded(
      child: Container(
        width: _sw,
        decoration: BoxDecoration(
          color: _isDarkMode ? AppColors.darkModeBodyDetails : Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(40.w)),
        ),
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 4.sp, vertical: 40.sp),
            child: Column(
              children: [
                // * Card
                Container(
                  height: 70.h,
                  child: Row(
                    children: [
                      // * Type
                      CardDetails(
                        title: KeyLang.type.tr(),
                        subtitle: _data.type!,
                      ),
                      SizedBox(width: 10.w),
                      // * Storage
                      CardDetails(
                        title: KeyLang.storage.tr(),
                        subtitle: _storage,
                      ),
                      SizedBox(width: 10.w),
                      // * download
                      CardDetails(
                        title: KeyLang.download.tr(),
                        subtitle: _data.download!,
                      ),
                    ],
                  ),
                ),
                // * Images
                Container(
                  width: _sw,
                  height: 200.h,
                  margin: EdgeInsets.symmetric(vertical: 10.h),
                  child: ListView.builder(
                    itemCount: _data.images?.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        height: 200.h,
                        width: _data.images?.length == 1 ? _sw : _sw / 1.3,
                        margin: EdgeInsets.symmetric(horizontal: 2.w),
                        child: CachImagesDetails(image: _data.images![index]),
                      );
                    },
                  ),
                ),
                // * desc
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10.sp),
                  width: _sw,
                  child: Text(
                    _data.description!,
                    style: Theme.of(context).textTheme.bodyText1?.copyWith(
                          color: _isDarkMode ? Colors.white : Colors.black,
                          height: 1.5,
                        ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
