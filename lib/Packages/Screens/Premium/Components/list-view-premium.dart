import 'package:flutter/material.dart';
import 'package:fprovid_app/Packages/Screens/Premium/Components/card-premium.dart';
import 'package:fprovid_app/Packages/Screens/Premium/Model/premium.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ListViewPremium extends StatelessWidget {
  ListViewPremium({required List<ModelPremium> dataList})
      : _dataList = dataList;

  final List<ModelPremium> _dataList;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160.h,
      // width: 200.w,
      child: ListView.builder(
        itemCount: _dataList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          ModelPremium _data = _dataList.elementAt(index);
          return CardPremium(
            data: _data,
          );
        },
      ),
    );
  }
}
