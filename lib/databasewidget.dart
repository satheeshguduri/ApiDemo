import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:thirdapp/databasehelper.dart';

class DababaseWidget extends StatefulWidget {
  @override
  _DababaseWidgetState createState() => _DababaseWidgetState();
}

class _DababaseWidgetState extends State<DababaseWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Database"),),
      body: Column(
        children: [
          RaisedButton(child: Text("insert"),onPressed: ()async{

         int id= await  DatabaseHelper.instance.insert({
                    DatabaseHelper.columnName:'Satheesh'
            });

          print('inserted id is $id');

          },),

          RaisedButton(child: Text("qurey"),onPressed: ()async{

            List<Map<String,dynamic>> queryRows = await DatabaseHelper.instance.queryAll();
            print(queryRows);
          },

          ),

          RaisedButton(child: Text("update"),onPressed: ()async{

            int updatedId = await DatabaseHelper.instance.update({
              DatabaseHelper.columnId:1,
              DatabaseHelper.columnName:"mahesh"
            });
                print(updatedId);
          },),

          RaisedButton(child: Text("delete"),onPressed: ()async{

            int deletedRow = await DatabaseHelper.instance.delete(1);
            print(deletedRow);

          },),

        ],
      ),
    );
  }
}
