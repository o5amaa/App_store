import 'package:flutter/material.dart';
import 'package:fprovid_app/Helpers/Theme/app_colors.dart';
import 'package:fprovid_app/Packages/Widgets/Web/web-view.dart';

class InnerPage extends StatelessWidget {
  const InnerPage({required String title, required String url})
      : _title = title,
        _url = url;

  final String _title, _url;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // *  *** AppBar
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          _title,
          style: Theme.of(context)
              .textTheme
              .headline5
              ?.copyWith(color: AppColors.myWhite),
        ),
      ),
      // * *** Body
      body: AppWebView(url: _url),
    );
  }
}
