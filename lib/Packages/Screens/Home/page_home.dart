import 'package:flutter/material.dart';
import 'package:fprovid_app/Packages/Screens/Home/Components/Drawer/list-drawer.dart';
import 'package:fprovid_app/Packages/Screens/Home/Components/custom-appbar.dart';

class PageHome extends StatelessWidget {
  static const String id = 'PageHome';
  final _pages = [
    Container(color: Colors.red),
    Container(color: Colors.blue),
    Container(color: Colors.white),
    Container(color: Colors.pink),
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
