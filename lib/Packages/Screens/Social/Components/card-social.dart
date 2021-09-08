import 'package:flutter/material.dart';
import 'package:fprovid_app/Helpers/Theme/app_colors.dart';
import 'package:fprovid_app/Helpers/Utils/path-images.dart';
import 'package:fprovid_app/Packages/Widgets/Cach-image/image-social.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CardSocial extends StatelessWidget {
  const CardSocial({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 180,
      height: 180,
      child: GridTile(
        child: Container(
          padding: EdgeInsets.all(0),
          height: MediaQuery.of(context).size.width,
          child: Card(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: ImagePremiumSocial(image: PathImages.ImageFacebook),
          ),
        ),
        footer: Card(
          elevation: 10,
          color: AppColors.myBlack.withOpacity(.4),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Container(
            padding: EdgeInsets.all(10.sp),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    'nameApp .. ',
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Text('3'),
                Icon(
                  Icons.star_outline_rounded,
                  size: 15.sp,
                ),
              ],
            ),
          ),
        ),
        // header: Container(color: Colors.green, child: Text('data')),
      ),
    );
  }
}
