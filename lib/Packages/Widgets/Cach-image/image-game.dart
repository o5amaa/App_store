import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:fprovid_app/Helpers/Utils/path-images.dart';
import 'package:fprovid_app/Packages/Widgets/Loading/app-loading.dart';
import 'package:fprovid_app/Packages/Widgets/Loading/enum-loading.dart';

class ImageGame extends StatelessWidget {
  ImageGame({Key? key, required String image})
      : _image = image,
        super(key: key);

  final String _image;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      // * Image Netwark
      imageUrl: _image,
      fit: BoxFit.fill, //** تمدد ع العرض والطول
      width: MediaQuery.of(context).size.width,
      // * befor show Image
      placeholder: (context, url) =>
          AppLoading(chooseLoading: ChooseLoading.IMAGE),
      // * Not Fuond Image
      errorWidget: (context, url, error) {
        return Container(
          width: MediaQuery.of(context).size.width,
          child: Image.asset(PathImages.notFoundImage),
        );
      },
    );
  }
}
