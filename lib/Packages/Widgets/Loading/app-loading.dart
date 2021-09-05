import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:fprovid_app/Helpers/Theme/app_colors.dart';
import 'package:fprovid_app/Packages/Widgets/Loading/enum-loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppLoading extends StatelessWidget {
  AppLoading({
    Key? key,
    required ChooseLoading chooseLoading,
    double size = 45,
    // required Color color,
  })  : _chooseLoading = chooseLoading,
        _size = size;
  // _color = color;

  final ChooseLoading _chooseLoading;
  final double _size;
  // final Color _color;

  @override
  Widget build(BuildContext context) {
    switch (_chooseLoading) {
      case ChooseLoading.PROFILE:
        return SpinKitSquareCircle(
          size: _size.sp,
          color: AppColors.profileLoadingLight,
        );
      case ChooseLoading.IMAGE:
        return SpinKitFadingCircle(
            size: _size.sp, color: AppColors.profileLoadingLight);
      case ChooseLoading.PAGE:
        return SpinKitDoubleBounce(
            size: _size.sp, color: AppColors.profileLoadingLight);
      case ChooseLoading.WEBVIEW:
        return SpinKitWanderingCubes(
            size: _size.sp, color: AppColors.profileLoadingLight);
    }
  }
}
