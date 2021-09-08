import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fprovid_app/Helpers/Language/generated/key-lang.dart';
import 'package:fprovid_app/Helpers/Theme/app_colors.dart';
import 'package:fprovid_app/Packages/Screens/Details/View/page-detailes.dart';
import 'package:fprovid_app/Packages/Screens/News/Model/news.dart';
import 'package:fprovid_app/Packages/Widgets/Cach-image/image-news.dart';

class CardNews extends StatelessWidget {
  CardNews({required ModelNews data}) : _data = data;

  final ModelNews _data;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        MaterialPageRoute _route = MaterialPageRoute(
          builder: (context) => PageDetails(id: _data.id!),
        );
        Navigator.push(context, _route);
      },
      child: Container(
        height: 100.h,
        margin: EdgeInsets.symmetric(horizontal: 5.w),
        child: Card(
          elevation: 10,
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.all(8.w),
                //  * Id App
                child: Text(_data.id ?? ''),
              ),
              SizedBox(width: 10.w),
              // * Image App
              //  ? why use const ..?  من شان اعادة عمل الري بلد لمن يوصل الى ال كونست يتجاهلها بسبب الرف رنسس السرعة
              // const ImageNews(image: PathImages.imageProfile),
              ImageNews(image: _data.image!), //? **
              SizedBox(width: 22.w),
              // * Name App
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(_data.nameApp!), //? **
                  Text(_data.type!), //? **
                  Row(
                    children: [
                      Text(_data.rating!), //? **
                      Icon(Icons.star, size: 15.sp),
                      SizedBox(width: 12.w),
                      // ! **** New Text
                      RichText(
                        text: TextSpan(
                            style: DefaultTextStyle.of(context).style,
                            children: <TextSpan>[
                              TextSpan(text: _data.size!), //? **
                              TextSpan(text: '  '),
                              TextSpan(
                                text: KeyLang.megabyte.tr(),
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText2!
                                    .copyWith(
                                      fontSize: 12.sp,
                                      color: AppColors.mbColorLight,
                                    ),
                              )
                            ] // ? [جيب الاستايلات الي انا عاملها]
                            ),
                      )
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
