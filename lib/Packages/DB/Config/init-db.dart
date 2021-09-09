import 'dart:io';

import 'package:fprovid_app/Packages/DB/Tables/t-app.dart';
import 'package:path/path.dart' as pth;
import 'package:path_provider/path_provider.dart' as dir;
import 'package:sqflite/sqflite.dart';

class InitDB {
  static Future<Database> init() async {
    Directory documentDirectory = await dir.getApplicationDocumentsDirectory();
    String path = pth.join(documentDirectory.path, "Apps.db");

    return openDatabase(
      path,
      version: 1,
      onOpen: (db) {}, //* configrion for version ..
      onCreate: (Database db, int version) async {
        await db.execute(
          "CREATE TABLE ${TableApp.nameTable} ("
          "${TableApp.colID} TEXT, PRIMARY KEY, "
          "${TableApp.colNameApp} TEXT, "
          "${TableApp.colImage} TEXT, "
          "${TableApp.colType} TEXT, "
          "${TableApp.colRating} TEXT, "
          "${TableApp.colSize} TEXT, "
          "${TableApp.colTimeStamp} TEXT "
          ")",
        );
      },
    );
  }
}
