

import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

import 'dart:async';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';



class DbHelper {
  static Database? database;

  static Future<void> getDataBase() async {
    if (database == null) {
      var databasePath = await getDatabasesPath();
      var addDbName = join(databasePath, "edugaon.db");

      database = await openDatabase(
        addDbName,
        version: 1,
        onCreate: (db, version) async {
          await db.execute(
            "CREATE TABLE students(id INTEGER PRIMARY KEY AUTOINCREMENT,name TEXT,email TEXT",
          );
        },
      );
    }
  }

  static Future<int?> insertStudent(Map<String, dynamic> data) async {
    await getDataBase();
    return await database?.insert("student", data);
  }
  static Future<List<Map<String,dynamic>>?>viewStudents()async{
 await getDataBase();
return await database?.query("students");
  }

  static Future<void> deliteData(int id) async {
    await getDataBase();
    database?.delete("students", where: "id=?", whereArgs: [id]);
  }

  static Future<void> updateData(int id, Map<String, dynamic> data) async {
    await getDataBase();
    await database?.update("student", data, where: "id=?", whereArgs: [id]);
  }
}
