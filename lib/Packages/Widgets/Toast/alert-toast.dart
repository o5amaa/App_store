import 'package:flutter/material.dart';
import 'package:fprovid_app/Helpers/Theme/app_colors.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

class ToastAlert {
  // * success
  static void toastSuccess({
    required BuildContext context,
    required String message,
  }) {
    bool _isDark = Theme.of(context).brightness == Brightness.dark;
    showTopSnackBar(
      context,
      CustomSnackBar.success(
        message: message,
        backgroundColor:
            _isDark ? AppColors.darkModeToast : AppColors.lightModeToast,
        textStyle: TextStyle(
          color: AppColors.myBlack,
          fontWeight: FontWeight.bold,
        ),
      ),
      displayDuration: Duration(microseconds: 1000),
    );
  }

  // * Error
  static void toastError({
    required BuildContext context,
    required String message,
  }) {
    bool _isDark = Theme.of(context).brightness == Brightness.dark;
    showTopSnackBar(
      context,
      CustomSnackBar.error(
        message: message,
        backgroundColor:
            _isDark ? AppColors.darkModeToast : AppColors.lightModeToast,
        textStyle: TextStyle(
          color: AppColors.myBlack,
          fontWeight: FontWeight.bold,
        ),
      ),
      displayDuration: Duration(microseconds: 1000),
    );
  }

  // * Info
  static void toastInfo({
    required BuildContext context,
    required String message,
  }) {
    bool _isDark = Theme.of(context).brightness == Brightness.dark;
    showTopSnackBar(
      context,
      CustomSnackBar.info(
        message: message,
        backgroundColor:
            _isDark ? AppColors.darkModeToast : AppColors.lightModeToast,
        textStyle: TextStyle(
          color: AppColors.myBlack,
          fontWeight: FontWeight.bold,
        ),
      ),
      displayDuration: Duration(microseconds: 1000),
    );
  }
}
