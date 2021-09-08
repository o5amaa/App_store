import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:fprovid_app/Helpers/Theme/app_colors.dart';
import 'package:fprovid_app/Helpers/Utils/path-images.dart';
import 'package:fprovid_app/Packages/Widgets/Loading/app-loading.dart';
import 'package:fprovid_app/Packages/Widgets/Loading/enum-loading.dart';

class ImageDetails extends StatelessWidget {
  const ImageDetails({required String image, Key? key})
      : _image = image,
        super(key: key);

  final String _image;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: _image,
      imageBuilder: (context, imageProvider) {
        return Container(
          width: 70.w,
          height: 70.h,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: imageProvider,
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(10.r),
            ),
            boxShadow: [
              BoxShadow(color: AppColors.myGray, offset: Offset(3, 2)),
              // BoxShadow(color: AppColors.myGray, offset: Offset(-3, 2)),
            ],
          ),
        );
      },
      placeholder: (context, url) =>
          AppLoading(chooseLoading: ChooseLoading.IMAGE),
      errorWidget: (context, url, error) {
        return Container(
          width: 70.w,
          height: 70.h,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(PathImages.notFoundImage),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(10.r),
            ),
            boxShadow: [
              BoxShadow(color: AppColors.myGray, offset: Offset(3, 2)),
              // BoxShadow(color: AppColors.myGray, offset: Offset(-3, 2)),
            ],
          ),
        );
      },
    );
  }
}
