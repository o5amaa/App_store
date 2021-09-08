import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:fprovid_app/Helpers/Theme/app_colors.dart';
import 'package:fprovid_app/Helpers/Utils/path-images.dart';
import 'package:fprovid_app/Packages/Screens/Details/Components/Header/rating-custom.dart';
import 'package:fprovid_app/Packages/Widgets/Cach-image/image-details.dart';

class HeaderData extends StatefulWidget {
  HeaderData({Key? key}) : super(key: key);

  @override
  _HeaderDataState createState() => _HeaderDataState();
}

class _HeaderDataState extends State<HeaderData> {
  @override
  Widget build(BuildContext context) {
    double _sw = MediaQuery.of(context).size.width;
    bool _isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Container(
      width: _sw,
      height: 100.h,
      color: _isDarkMode ? AppColors.darkMode : AppColors.blueDetailsBG,
      padding: EdgeInsets.all(10.h),
      child: ListTile(
        title: Text('Name App'),
        subtitle: RatingCustom(rating: '١'),
        leading: ImageDetails(image: PathImages.imageProfile),
        trailing: OutlinedButton(
          child: Text('Instal'),
          onPressed: () {},
          style: OutlinedButton.styleFrom(
            primary: AppColors.myWhite,
            backgroundColor: AppColors.lightModeInstallBtn,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.sp),
            ),
            side:
                BorderSide(color: AppColors.myWhite.withOpacity(.77), width: 1),
          ),
        ),
      ),
    );
  }
}
