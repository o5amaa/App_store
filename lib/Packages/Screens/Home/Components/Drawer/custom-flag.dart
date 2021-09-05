import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';

class FlagDrawer extends StatelessWidget {
  const FlagDrawer({required String title, required String flag})
      : _title = title,
        _flag = flag;

  final String _title, _flag;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.w,
      height: 100.h,
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
    );
  }
}
