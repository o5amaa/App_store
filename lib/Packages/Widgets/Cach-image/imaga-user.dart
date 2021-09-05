import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:fprovid_app/Helpers/Utils/path-images.dart';
import 'package:fprovid_app/Packages/Widgets/Loading/app-loading.dart';
import 'package:fprovid_app/Packages/Widgets/Loading/enum-loading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ImageUser extends StatelessWidget {
  const ImageUser(
      {required String imageUrl,
      required double radius,
      required double sizeLoading})
      : _imageUrl = imageUrl,
        _radius = radius,
        _sizeLoading = sizeLoading;

  final String _imageUrl;
  final double _radius, _sizeLoading;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      // imageUrl: "http://via.placeholder.com/350x150",
      imageUrl: _imageUrl,
      imageBuilder: (context, imageProvider) {
        return CircleAvatar(
          radius: _radius.r,
          backgroundImage: imageProvider,
        );
      },

      // ? **** Loading before show image ****
      placeholder: (context, url) => AppLoading(
          chooseLoading: ChooseLoading.PROFILE, size: _sizeLoading.sp),

      // ! *** Error Not Image from Srever ****
      errorWidget: (context, url, error) {
        return CircleAvatar(
          radius: _radius.r,
          backgroundImage: AssetImage(PathImages.picthumbnail),
        );
      },
    );
  }
}
