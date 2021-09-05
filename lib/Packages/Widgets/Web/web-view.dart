import 'package:flutter/material.dart';
import 'package:fprovid_app/Packages/Widgets/Loading/app-loading.dart';
import 'package:fprovid_app/Packages/Widgets/Loading/enum-loading.dart';
import 'package:webview_flutter/webview_flutter.dart';

class AppWebView extends StatefulWidget {
  const AppWebView({required String url}) : _url = url;

  final String _url;

  @override
  _AppWebViewState createState() => _AppWebViewState();
}

class _AppWebViewState extends State<AppWebView> {
  bool _isLoading = true;
  @override
  Widget build(BuildContext context) {
    return Stack(
      //  ?? العناصر فوق بعض
      children: [
        WebView(
          // ? **** widget._URL in privitr on class scobe ..
          initialUrl: widget._url,
          javascriptMode: JavascriptMode.unrestricted,
          onPageFinished: (finish) {
            // ! ***  لمن الصفحة تشتغل بشكل كامل **
            setState(() {
              _isLoading = false;
            });
          },
        ),
        if (_isLoading) AppLoading(chooseLoading: ChooseLoading.WEBVIEW)
      ],
    );
  }
}
