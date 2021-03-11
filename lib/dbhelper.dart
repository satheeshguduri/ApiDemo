



import 'dart:async';
import 'dart:io';

import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DBHelperClass{



   static final _dbName = "student.db";
   static final _dbVersion = 1;
   static final _tableName = "studentinfo";
   static final columnId = "id";
   static final columnName = "name";



   DBHelperClass._privateConstructor();
   static final DBHelperClass instance = DBHelperClass._privateConstructor();

  static Database _database;

   Future<Database> get database async{
     if(_database!=null)
       return _database;
     _database = await _initiateDatabase();
     return _database;
   }

  _initiateDatabase() async{
    Directory directory = await getApplicationDocumentsDirectory();//path for db file
    String path = join(directory.path,_dbName);//c:/desktop/dbname

    return await openDatabase(path,version: _dbVersion,onCreate: _onCreate);

  }


  Future _onCreate(Database db, int version) {

       db.execute(
         '''
         CREATE TABLE $_tableName(
         $columnId INTEGER PRIMARY KEY,
         $columnName TEXT NOT NULL)
         
         '''
       );// CREATE TABLE studentinfo(id integer, name text)

  }

  //for inserting
   Future<int> insert(Map<String, dynamic> row) async{
     Database db = await instance.database;
     return   db.insert(_tableName, row);
      }

      // updating the data

   Future<int>  update(Map<String, dynamic> row)async{
        Database db = await instance.database;
        int id = row[columnId];
     return  db.update(_tableName, row,where: '$columnId = ?',whereArgs: [id]);//1 satheesh    1 mahesh
      }
// deleting
   Future<int>   delete(int id)async{
        Database db = await instance.database;
   return  db.delete(_tableName,where:'$columnId = ?',whereArgs: [id]); //deleting the row with the id
      }

    // to see complete data
  Future<List<Map<String, dynamic>>> seeAll()async{
     Database db = await instance.database;
    return db.query(_tableName);

   }
}