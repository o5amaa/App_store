import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fprovid_app/Helpers/Theme/app_colors.dart';
import 'package:fprovid_app/Packages/Screens/Details/Components/Header/rating-custom.dart';
import 'package:fprovid_app/Packages/Screens/Details/Model/template.dart';
import 'package:fprovid_app/Packages/Widgets/Cach-image/image-details.dart';

class HeaderData extends StatefulWidget {
  HeaderData({required Template data}) : _data = data;
  final Template _data;
  @override
  _HeaderDataState createState() => _HeaderDataState();
}

class _HeaderDataState extends State<HeaderData> {
  @override
  Widget build(BuildContext context) {
    double _sw = MediaQuery.of(context).size.width;
    bool _isDarkMode = Theme.of(context).brightness == Brightness.dark;
    Template _snapshot = widget._data;
    return Container(
      width: _sw,
      height: 100.h,
      color: _isDarkMode ? AppColors.darkMode : AppColors.blueDetailsBG,
      padding: EdgeInsets.all(10.h),
      child: ListTile(
        title: Text(_snapshot.nameApp!),
        subtitle: RatingCustom(rating: _snapshot.rating!),
        leading: ImageDetails(image: _snapshot.image!),
        trailing: OutlinedButton(
          child: Text('install'),
          onPressed: () {},
          style: OutlinedButton.styleFrom(
              primary: Colors.white,
              backgroundColor: AppColors.lightModeInstallBtn,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.sp),
              ),
              side: BorderSide(color: Colors.black, width: 1)),
        ),
      ),
    );
  }
}
