import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';

class FlagDrawer extends StatelessWidget {
  const FlagDrawer(
      {required String title, required String flag, required Locale languag})
      : _title = title,
        _flag = flag,
        _languag = languag;

  final String _title, _flag;
  final Locale _languag;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // ? change Laguag
        // * EasyLocalization.of(context)?.setLocale(_languag);  ? or !
        EasyLocalization.of(context)!.setLocale(_languag);
        Navigator.pop(context);
      },
      child: Container(
        width: 100.w,
        height: 110.h,
        child: Column(
          children: [
            // * Flag ..
            Container(
              width: 100.w,
              height: 80.h,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(_flag),
                ),
              ),
            ),
            // * Text ..
            Text(_title.tr())
          ],
        ),
      ),
    );
  }
}

// * null safty
// ! int? x;
// ! print(x ?? 'is x = null');
// ! -------
// * ! or ? 

//** 
// * ? للفحص اذا كان نل اعمل الي بعد
// * ! انا متأكد انها ليسة نل [ تحمل قيمة ]
// 
//*/ 
 

