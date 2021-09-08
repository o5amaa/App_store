import 'package:flutter/material.dart';
import 'package:fprovid_app/Packages/Screens/Games/View/page-games.dart';
import 'package:fprovid_app/Packages/Screens/Home/Components/Drawer/list-drawer.dart';
import 'package:fprovid_app/Packages/Screens/Home/Components/custom-appbar.dart';
import 'package:fprovid_app/Packages/Screens/News/View/page-news.dart';
import 'package:fprovid_app/Packages/Screens/Social/View/pang-social.dart';

class PageHome extends StatelessWidget {
  static const String id = 'PageHome';
  final _pages = [
    PageNews(),
    PageGames(),
    Container(color: Colors.white),
    PageSocial(),
  ];
  // * -----------------------------
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      //? **** this DefaultTabController to TabBar
      length: 4,
      child: Scaffold(
          // * *********** AppBar ************
          appBar: AppBarCustomm(),
          // * *********** Drawer ************
          drawer: ListDrawer(),
          // * ************ Body *************
          body: TabBarView(
            children: _pages,
          )),
    );
  }
}
