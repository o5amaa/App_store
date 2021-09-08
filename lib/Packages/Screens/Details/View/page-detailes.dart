import 'package:flutter/material.dart';
import 'package:fprovid_app/Helpers/Theme/app_colors.dart';
import 'package:fprovid_app/Packages/Screens/Details/Components/Header/header-data.dart';

class PageDetails extends StatelessWidget {
  const PageDetails({required String id}) : _id = id;

  final String _id;

  @override
  Widget build(BuildContext context) {
    bool _isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      backgroundColor:
          _isDarkMode ? AppColors.darkMode : AppColors.blueDetailsBG,
      body: SafeArea(
        child: Column(
          children: [
            // * Hedare Data
            HeaderData(),
          ],
        ),
      ),
    );
  }
}
