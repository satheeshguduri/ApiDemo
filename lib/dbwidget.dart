

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:thirdapp/dbhelper.dart';

class DBWidgetClass extends StatefulWidget {
  @override
  _DBWidgetClassState createState() => _DBWidgetClassState();
}

class _DBWidgetClassState extends State<DBWidgetClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Database Demo"),),
      body: Column(

        children: [

          // insert
          RaisedButton(child:Text("INSERT"),onPressed: () async{
             int id= await DBHelperClass.instance.insert({
              DBHelperClass.columnName:'satheesh'
            }
            );
            print('inserted id is $id');

          }),

          // update
          RaisedButton(child:Text("UPDATE"),onPressed: () async{
            int updatedId = await DBHelperClass.instance.update({
              DBHelperClass.columnId:1,
              DBHelperClass.columnName:"mahesh"
            });
            print(updatedId);
          },),


          //delete
          RaisedButton(child:Text("DELETE"),onPressed: () async{
            int deletedRow = await DBHelperClass.instance.delete(1);
            print(deletedRow);

          }),

        // see all
          RaisedButton(child:Text("SEE ALL"),onPressed: () async{
            List<Map<String,dynamic>> queryRows = await DBHelperClass.instance.seeAll();
            print(queryRows);
          },

          ),






        ],
      ),
    );
  }
}
