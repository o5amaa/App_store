import 'package:flutter/material.dart';
import 'package:fprovid_app/Helpers/Language/generated/key-lang.dart';
import 'package:fprovid_app/Packages/DB/Build/b-app.dart';
import 'package:fprovid_app/Packages/DB/Model/m-app.dart';
import 'package:fprovid_app/Packages/Screens/My-App/Components/appbar-myapp.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:fprovid_app/Packages/Screens/My-App/Components/card-my-app.dart';

class PageMyApp extends StatefulWidget {
  static final String id = 'PageMyApp';
  const PageMyApp({Key? key}) : super(key: key);

  @override
  _PageMyAppState createState() => _PageMyAppState();
}

class _PageMyAppState extends State<PageMyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarMyApp(),
      body: FutureBuilder<List<ModelAppDB>>(
        future: AppDB.db.getAllApps(),
        builder: (context, snapshot) {
          List<ModelAppDB> _dataList = snapshot.data ?? [];
          if (snapshot.hasData && snapshot.data?.length != 0) {
            return SafeArea(
              child: ListView.builder(
                itemCount: _dataList.length,
                itemBuilder: (context, index) {
                  ModelAppDB _modelAppDB = _dataList.elementAt(index);
                  return CardMyApp(
                    dataApp: _modelAppDB,
                    uninstall: () => setState(() {
                      // ??  ري بلد من اول وجديد
                    }),
                  );
                },
              ),
            );
          } else {
            return Center(
              child: Text(KeyLang.emptyDownloaded.tr()),
            );
          }
        },
      ),
    );
  }
}
