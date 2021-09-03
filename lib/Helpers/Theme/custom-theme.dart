import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'app_colors.dart';
import 'style.dart';

class CustomTheme {
  // * * * * * * * * * * * * *** Light *** * * * * * * * * * * * *
  static final ThemeData lightTheme = ThemeData.light().copyWith(
    //? //////// primaryColor ////////////////
    primaryColor: AppColors.mineColorLight,
    accentColor: AppColors.mineColorLight,

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor:
            MaterialStateProperty.all<Color>(AppColors.mineColorLight),
      ),
    ),

    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(primary: Colors.green),
    ),

    //? //////// dividerTheme ////////////////
    dividerTheme: DividerThemeData(
      color: AppColors.myWhite,
      thickness: 1.5.h,
      indent: 85.w,
      endIndent: 85.w,
      space: 18,
    ),

    //? //////// AppBarTheme ////////////////
    appBarTheme: AppBarTheme(
      color: AppColors.mineColorLight,
      iconTheme: IconThemeData(color: AppColors.myWhite),
      actionsIconTheme: IconThemeData(color: AppColors.myWhite),
    ),

    // bottomAppBarTheme: BottomAppBarTheme(color: AppColors.myBlack),

    //? //////// TabBarTheme  ////////////////
    tabBarTheme: TabBarTheme(
      labelStyle: TextStyle(color: AppColors.myGray),
      labelColor: AppColors.myWhite,
    ),

    //? ////////  ////////////////
    popupMenuTheme: PopupMenuThemeData(
      color: AppColors.myWhite,
      // textStyle: TextStyle(color: AppColors.myBlack),
      elevation: 5,
      enableFeedback: true,
    ),

    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: AppColors.myBlack.withOpacity(.6),
    ),

    snackBarTheme: SnackBarThemeData(
      backgroundColor: AppColors.myGray.withOpacity(.5),
      actionTextColor: AppColors.myBlack,
    ),

    //? //////// TextTheme ////////////////
    textTheme: TextTheme(
      // todo :: للعناوين
      headline1: AppStyles.styleHeadline1Light,
      headline2: AppStyles.styleHeadline2Light,
      headline3: AppStyles.styleHeadline3Light,
      headline4: AppStyles.styleHeadline4Light,
      headline5: AppStyles.styleHeadline5Light,
      headline6: AppStyles.styleHeadline6Light,
      //
      subtitle1: AppStyles.styleSubtitle1Light,
      subtitle2: AppStyles.styleSubtitle2Light,
      //
      bodyText1: AppStyles.styleBodyText1Light,
      bodyText2: AppStyles.styleBodyText2Light,
      //
      button: AppStyles.styleButtonLight,
      //
    ).apply(displayColor: Colors.black, bodyColor: Colors.black),

    //? ******** floatingActionButtonTheme *****************
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: AppColors.mineColorLight,
      hoverColor: AppColors.myWhite,
      focusColor: AppColors.myGray,
    ),
  );

  // * * * * * * * * * * * * *** Dark *** * * * * * * * * * * * *
  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    textTheme: TextTheme(
      headline1: AppStyles.styleHeadline1Dark,
      headline2: AppStyles.styleHeadline2Dark,
      headline3: AppStyles.styleHeadline3Dark,
      headline4: AppStyles.styleHeadline4Dark,
      headline5: AppStyles.styleHeadline5Dark,
      headline6: AppStyles.styleHeadline6Dark,
      subtitle1: AppStyles.styleSubtitle1Dark,
      subtitle2: AppStyles.styleSubtitle2Dark, // ! Defult ..
      bodyText1: AppStyles.styleBodyText1Dark,
      bodyText2: AppStyles.styleBodyText2Dark,
      button: AppStyles.styleButtonDark,
    ).apply(displayColor: Colors.white, bodyColor: Colors.white),

    //? ******** floatingActionButtonTheme *************

    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: AppColors.myWhite,
      hoverColor: AppColors.myWhite,
    ),

    //? ******** elevatedButtonTheme ******************
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor:
            MaterialStateProperty.all<Color>(AppColors.mineColorDark),
      ),
    ),

    //? //////// AppBarTheme ////////////////
    appBarTheme: AppBarTheme(
      color: AppColors.mineColorDark,
      iconTheme: IconThemeData(color: AppColors.myWhite),
      actionsIconTheme: IconThemeData(color: AppColors.myWhite),
    ),
  );
}
