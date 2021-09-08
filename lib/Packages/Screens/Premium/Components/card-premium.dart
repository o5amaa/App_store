import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:fprovid_app/Helpers/Utils/path-images.dart';
import 'package:fprovid_app/Packages/Screens/Premium/Model/premium.dart';
import 'package:fprovid_app/Packages/Widgets/Cach-image/image-social.dart';

class CardPremium extends StatelessWidget {
  CardPremium({required ModelPremium data}) : _data = data;

  final ModelPremium _data;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160.h,
      width: 200.w,
      child: Card(
        elevation: 10,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: ImagePremiumSocial(
                  image: _data.image ?? PathImages.notFoundImage),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(5.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(_data.nameApp!),
                    Text('${_data.price!} JD'),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
