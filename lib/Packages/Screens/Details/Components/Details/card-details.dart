import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fprovid_app/Helpers/Theme/app_colors.dart';

class CardDetails extends StatelessWidget {
  const CardDetails({Key? key, required String title, required String subtitle})
      : _title = title,
        _subtitle = subtitle,
        super(key: key);

  final String _title;
  final String _subtitle;

  @override
  Widget build(BuildContext context) {
    bool _isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: _isDarkMode
              ? AppColors.darkModeCardDetails
              : AppColors.blueDetailsBG,
          borderRadius: BorderRadius.all(Radius.circular(10.r)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(_title),
            SizedBox(height: 2.h),
            Text(_subtitle),
          ],
        ),
      ),
    );
  }
}
