import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RatingCustom extends StatelessWidget {
  const RatingCustom({Key? key, required String rating})
      : _rating = rating,
        super(key: key);

  final String _rating;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 5.sp),
      child: RatingBarIndicator(
        rating: convertNumber(rating: _rating),
        itemBuilder: (context, index) => Icon(
          Icons.star,
          color: Colors.amber,
        ),
        itemCount: 5,
        itemSize: 20.0.sp,
        direction: Axis.horizontal,
      ),
    );
  }

  double convertNumber({required String rating}) {
    switch (rating) {
      case '١':
        return 1;
      case '٢':
        return 2;

      case '٣':
        return 3;

      case '٤':
        return 4;

      case '٥':
        return 5;

      default:
        return double.parse(rating);
    }
  }
}
