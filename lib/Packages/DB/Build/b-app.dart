import 'package:fprovid_app/Packages/DB/Config/init-db.dart';
import 'package:fprovid_app/Packages/DB/Model/m-app.dart';
import 'package:fprovid_app/Packages/DB/Tables/t-app.dart';
import 'package:sqflite/sqlite_api.dart';

class AppDB {
  // * private Constructor
  AppDB._();
  // created object db
  static final AppDB db = AppDB._();

  // * setup The DB
  static Database? _database;

  // * check have DB
  Future<Database> get database async {
    return _database = _database ?? await InitDB.init();
  }

  // * Insert App
  Future<bool> insertApp({required ModelAppDB dataApp}) async {
    final Database _db = await database;
    try {
      await _db.insert(TableApp.nameTable, dataApp.toMap());
      return true;
    } catch (e) {
      print('error : $e');
      return false;
    }
  }

  // * get By ID
  Future<ModelAppDB?> getAppById({required String id}) async {
    final Database _db = await database;
    var res = await _db.query(TableApp.nameTable,
        where: "${TableApp.colID} = ?", whereArgs: [id]);
    return res.isNotEmpty ? ModelAppDB.fromMap(res.first) : null;
  }

  // * get All App
  Future<List<ModelAppDB>> getAllApps() async {
    final Database _db = await database;
    var res = await _db.query(
      TableApp.nameTable,
      orderBy: "${TableApp.colTimeStamp} DESC",
    );

    List<ModelAppDB> list = res.isNotEmpty
        ? res.map((app) => ModelAppDB.fromMap(app)).toList()
        : [];

    return list;
  }

  // * update App
  Future<bool> updateApp({required ModelAppDB updateData}) async {
    final _db = await database;

    try {
      await _db.update(TableApp.nameTable, updateData.toMap(),
          where: "${TableApp.colID} = ?", whereArgs: [updateData.id]);
      return true;
    } catch (e) {
      return false;
    }
  }

  //  * Delete by id
  deleteAppById({required String id}) async {
    final _db = await database;
    await _db.delete(
      TableApp.nameTable,
      where: "${TableApp.colID} = ?",
      whereArgs: [id],
    );
  }

  // * Delete All
  deleteTableApp() async {
    final _db = await database;
    await _db.delete(TableApp.nameTable);
  }
}
