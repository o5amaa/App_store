import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fprovid_app/Helpers/Utils/path-images.dart';
import 'package:fprovid_app/Packages/Widgets/Loading/app-loading.dart';
import 'package:fprovid_app/Packages/Widgets/Loading/enum-loading.dart';

class CachImagesDetails extends StatelessWidget {
  CachImagesDetails({required String image, Key? key})
      : _image = image,
        super(key: key);

  final String _image;
  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: _image,
      imageBuilder: (context, imageProvider) {
        return Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: imageProvider,
              fit: BoxFit.fill,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(10.r),
            ),
          ),
        );
      },
      placeholder: (context, url) =>
          AppLoading(chooseLoading: ChooseLoading.IMAGE),
      errorWidget: (context, url, error) {
        return Container(
          width: MediaQuery.of(context).size.width,
          child: Image.asset(PathImages.notFoundImage),
        );
      },
    );
  }
}
