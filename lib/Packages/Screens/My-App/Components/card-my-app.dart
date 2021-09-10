import 'package:flutter/material.dart';
import 'package:fprovid_app/Helpers/Language/generated/key-lang.dart';
import 'package:fprovid_app/Packages/DB/Build/b-app.dart';
import 'package:fprovid_app/Packages/DB/Model/m-app.dart';
import 'package:fprovid_app/Packages/Widgets/Cach-image/image-news.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fprovid_app/Packages/Widgets/Toast/alert-toast.dart';
import 'package:easy_localization/easy_localization.dart';

class CardMyApp extends StatelessWidget {
  final ModelAppDB _dataApp;
  final Function() uninstall;

  CardMyApp({
    required ModelAppDB dataApp,
    required this.uninstall,
  }) : _dataApp = dataApp;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90.h,
      margin: EdgeInsets.symmetric(horizontal: 5.sp),
      child: Card(
        elevation: 10,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(width: 10.sp),
            ImageNews(image: _dataApp.image!),
            SizedBox(width: 15.w),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 8.sp),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(child: Text(_dataApp.name!)),
                  Expanded(child: Text(_dataApp.type!)),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(_dataApp.rating!),
                        Icon(
                          Icons.star,
                          size: 15.sp,
                        ),
                        SizedBox(width: 12),
                        RichText(
                          text: TextSpan(
                            style: DefaultTextStyle.of(context).style,
                            children: <TextSpan>[
                              TextSpan(text: '${_dataApp.size}'),
                              TextSpan(
                                text: ' MB',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText2
                                    ?.copyWith(fontSize: 12.sp),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            IconButton(
              onPressed: () async {
                await AppDB.db.deleteAppById(id: _dataApp.id!);
                ToastAlert.toastSuccess(
                  context: context,
                  message: KeyLang.successUninstalled.tr(),
                );
                uninstall();
              },
              icon: Icon(
                Icons.delete,
                size: 30.sp,
                color: Colors.red,
              ),
            )
          ],
        ),
      ),
    );
  }
}
