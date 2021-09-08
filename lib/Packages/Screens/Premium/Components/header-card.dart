import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HeaderCard extends StatelessWidget {
  const HeaderCard({required String title}) : _title = title;

  final String _title;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(horizontal: 6.w),
      child: Text(
        _title.tr() + ' :',
        textAlign: TextAlign.start,
        style: Theme.of(context).textTheme.headline6,
      ),
    );
  }
}
