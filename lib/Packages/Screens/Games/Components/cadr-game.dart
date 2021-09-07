import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fprovid_app/Helpers/Utils/path-images.dart';
import 'package:fprovid_app/Packages/Widgets/Cach-image/image-game.dart';

class CardGame extends StatelessWidget {
  const CardGame({Key? key}) : super(key: key);

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
                    ImageGame(image: PathImages.imageProfile), // ***
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
                    'Test Game..',
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
