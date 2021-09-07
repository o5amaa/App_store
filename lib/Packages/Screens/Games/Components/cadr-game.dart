import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fprovid_app/Packages/Screens/Games/Model/game.dart';
import 'package:fprovid_app/Packages/Widgets/Cach-image/image-game.dart';

class CardGame extends StatelessWidget {
  CardGame({Key? key, required ModelGame data})
      : _data = data,
        super(key: key);

  final ModelGame _data;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170.h,
      width: MediaQuery.of(context).size.width,
      child: GestureDetector(
        // * الهدف منها النقر والذهاب لي الويب فيو او صفحة اخراء
        onTap: () {},
        child: Card(
          clipBehavior: Clip.antiAliasWithSaveLayer, //* من شان الحواف
          elevation: 10,
          child: Column(
            children: [
              Expanded(
                flex: 3,
                child: Stack(
                  // * عنصر فوق عنصر
                  children: [
                    // * Image
                    ImageGame(image: _data.imageUrl!), // ***
                    Positioned(
                      // * تحكم بمكان العنصر
                      child: Center(
                        child: Icon(
                          Icons.play_circle_outline,
                          size: 50.sp,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // * Text
              Expanded(
                child: Center(
                  child: Text(
                    _data.nameApp!,
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
