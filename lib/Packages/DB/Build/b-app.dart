import 'package:fprovid_app/Packages/DB/Config/init-db.dart';
import 'package:fprovid_app/Packages/DB/Model/m-app.dart';
import 'package:fprovid_app/Packages/DB/Tables/t-app.dart';
import 'package:sqflite/sqflite.dart';

class AppDB {
  // * private constracter ..
  AppDB._();
// * create opject from AppDB ..
  static final AppDB db = AppDB._();

  // * setip the DB ..
  static Database? _database;

  // * Cahck DB is Empty ..
  Future<Database> get database async {
    return _database = _database ?? await InitDB.init();
  }

  // *Add row ..
  Future<bool> insartApp({required ModelAppBD dataApp}) async {
    final Database _db = await database;
    try {
      await _db.insert(TableApp.nameTable, dataApp.toMap());
      print('Insart ... ');
      return true;
    } catch (e) {
      print('Error:  $e');
      return false;
    }
  }

// * Select by id ..
  Future<ModelAppBD?> getAppById({required String id}) async {
    final Database _db = await database;
    var res = await _db.query(TableApp.nameTable,
        where: "${TableApp.colID} = ?", whereArgs: [id]);

    return res.isNotEmpty ? ModelAppBD.fromMap(res.first) : null;
  }

// * Select All ..
  Future<List<ModelAppBD>> getAllApps() async {
    final Database _db = await database;
    var res = await _db.query(TableApp.nameTable,
        orderBy: "${TableApp.colTimeStamp} DESC");

    List<ModelAppBD> list = res.isNotEmpty
        ? res.map((app) => ModelAppBD.fromMap(app)).toList()
        : [];

    return list;
  }
}
