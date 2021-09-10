import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fprovid_app/Helpers/Language/generated/key-lang.dart';
import 'package:fprovid_app/Helpers/Theme/app_colors.dart';
import 'package:fprovid_app/Packages/DB/Build/b-app.dart';
import 'package:fprovid_app/Packages/DB/Model/m-app.dart';
import 'package:fprovid_app/Packages/Screens/Details/Components/Header/rating-custom.dart';
import 'package:fprovid_app/Packages/Screens/Details/Model/template.dart';
import 'package:fprovid_app/Packages/Widgets/Cach-image/image-details.dart';
import 'package:fprovid_app/Packages/Widgets/Toast/alert-toast.dart';
import 'package:easy_localization/easy_localization.dart';

class HeaderData extends StatefulWidget {
  HeaderData({required Template data}) : _data = data;
  final Template _data;
  @override
  _HeaderDataState createState() => _HeaderDataState();
}

class _HeaderDataState extends State<HeaderData> {
  @override
  Widget build(BuildContext context) {
    double _sw = MediaQuery.of(context).size.width;
    bool _isDarkMode = Theme.of(context).brightness == Brightness.dark;
    Template _snapshot = widget._data;
    return Container(
      width: _sw,
      height: 100.h,
      color: _isDarkMode ? AppColors.darkMode : AppColors.blueDetailsBG,
      padding: EdgeInsets.all(10.h),
      child: ListTile(
        title: Text(_snapshot.nameApp!),
        subtitle: RatingCustom(rating: _snapshot.rating!),
        leading: ImageDetails(image: _snapshot.image!),
        // ? .......
        trailing: FutureBuilder<Map<String, dynamic>>(
            future: _updateBtn(idApp: _snapshot.id!, isDark: _isDarkMode),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                Map<String, dynamic>? _dataApp = snapshot.data;

                return OutlinedButton(
                  // * **********
                  child: Text(_dataApp?['title']).tr(),
                  onPressed: () async {
                    try {
                      ModelAppDB _modelAppBD = ModelAppDB(
                        id: _snapshot.id,
                        name: _snapshot.nameApp,
                        image: _snapshot.image,
                        type: _snapshot.type,
                        size: _snapshot.size,
                        rating: _snapshot.rating,
                        timeStamp:
                            DateTime.now().millisecondsSinceEpoch.toString(),
                      );
                      // * ch
                      ModelAppDB? _haveApp =
                          await AppDB.db.getAppById(id: _modelAppBD.id!);
                      if (_haveApp == null) {
                        // * insert
                        await AppDB.db.insertApp(dataApp: _modelAppBD);
                        setState(() {});
                        print('Insart .. ');
                        ToastAlert.toastSuccess(
                          context: context,
                          message: KeyLang.successInstalled.tr(),
                        );
                      } else {
                        // * del
                        await AppDB.db.deleteAppById(id: _modelAppBD.id!);
                        setState(() {});
                        print('Delete ..');
                        ToastAlert.toastSuccess(
                          context: context,
                          message: KeyLang.successUninstalled.tr(),
                        );
                      }
                    } catch (e) {
                      ToastAlert.toastError(
                        context: context,
                        message: KeyLang.somethingWrong.tr() + '$e',
                      );
                    }
                  },
                  style: OutlinedButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: _dataApp?['color'],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.sp),
                    ),
                    side: BorderSide(color: Colors.black, width: 1),
                  ),
                );
              } else {
                return Icon(
                  Icons.error,
                  color: Colors.red,
                );
              }
            }),
      ),
    );
  }

  Future<Map<String, dynamic>> _updateBtn(
      {required String idApp, required bool isDark}) async {
    if (await AppDB.db.getAppById(id: idApp) != null) {
      // * Unistall
      return {
        'title': KeyLang.uninstall.tr(),
        'color': isDark
            ? AppColors.darkModeUnInstallBtn
            : AppColors.lightModeUnInstallBtn,
      };
    } else {
      // ! install
      return {
        'title': KeyLang.install.tr(),
        'color': isDark
            ? AppColors.darkModeInstallBtn
            : AppColors.lightModeInstallBtn,
      };
    }
  }
}
