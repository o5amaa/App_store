import 'package:flutter/material.dart';
import 'package:fprovid_app/Packages/Screens/Home/page_home.dart';
import 'package:fprovid_app/Packages/Screens/My-App/View/page-my-app.dart';
import 'package:fprovid_app/Packages/Screens/News/View/page-news.dart';
import 'package:fprovid_app/Packages/Screens/Splash/page_splash.dart';
import 'package:fprovid_app/Packages/Screens/Test/page_test.dart';

class AppRoutes {
  static Map<String, WidgetBuilder> routes = {
    PageSplash.id: (context) => PageSplash(),
    PageHome.id: (context) => PageHome(),
    PageTest.id: (context) => PageTest(),
    PageNews.id: (context) => PageNews(),
    PageMyApp.id: (context) => PageMyApp(),
  };
}
