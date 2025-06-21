import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DbHelper {
  static Database? database;

  static Future<void> getDataBase() async {
    if (database == null) {
      var databasePath = await getDatabasesPath();
      var addDbName = join(databasePath, "edugoan.db");
      database = await openDatabase(
        addDbName,
        version: 1,
        onCreate: (db, version) {
          db.execute(
            "CREATE TABLE student(id INTEGER PRIMARY KEY AUTOINCREMENT,name TEXT,email TEXT)",
          );
          return db;
        },
      );
    }
  }

  static Future<int?> insertStudent(Map<String, dynamic> data) async {
    await getDataBase();
    return database?.insert("student", data);
  }

  static Future<List<Map<String, dynamic>>?> viewstudent() async {
    getDataBase();
    return await database?.query("student");
  }
}
