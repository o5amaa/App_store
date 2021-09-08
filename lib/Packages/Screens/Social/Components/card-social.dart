import 'package:flutter/material.dart';
import 'package:fprovid_app/Helpers/Theme/app_colors.dart';
import 'package:fprovid_app/Helpers/Utils/path-images.dart';
import 'package:fprovid_app/Packages/Screens/Social/Model/social.dart';
import 'package:fprovid_app/Packages/Widgets/Cach-image/image-social.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CardSocial extends StatelessWidget {
  CardSocial({required ModelSocial data}) : _data = data;

  final ModelSocial _data;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // width: 180,
      // height: 180,
      child: GridTile(
        child: Container(
          padding: EdgeInsets.all(0),
          height: MediaQuery.of(context).size.width,
          child: Card(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: ImagePremiumSocial(
                image: _data.image ?? PathImages.notFoundImage), // ***
          ),
        ),
        footer: Card(
          elevation: 10,
          color: AppColors.myGray.withOpacity(.35),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Container(
            padding: EdgeInsets.all(10.sp),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    _data.nameApp!, // ***
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Text(_data.rating!), // ***
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
