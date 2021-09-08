import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:fprovid_app/Helpers/Utils/path-images.dart';
import 'package:fprovid_app/Packages/Widgets/Loading/app-loading.dart';
import 'package:fprovid_app/Packages/Widgets/Loading/enum-loading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ImagePremiumSocial extends StatelessWidget {
  ImagePremiumSocial({required String image, double width = 200})
      : _image = image,
        _width = width;

  final String _image;
  final double _width;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: _image,
      fit: BoxFit.fill,
      width: _width.w,
      placeholder: (context, url) =>
          AppLoading(chooseLoading: ChooseLoading.IMAGE),
      errorWidget: (context, url, error) {
        return Container(
          width: _width.w,
          child: Image.asset(PathImages.notFoundImage),
        );
      },
    );
  }
}
