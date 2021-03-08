import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:thirdapp/employee.dart';
import 'package:thirdapp/requestmodel.dart';
import 'package:thirdapp/responsemodel.dart';

import 'dioclient.dart';

class ApiClass extends StatefulWidget {
  @override
  _ApiClassState createState() => _ApiClassState();
}

class _ApiClassState extends State<ApiClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: Text("Api Demo"),),
      body: Container(
        margin: EdgeInsets.only(top: 100),
        child: RaisedButton(child:Text("download"),onPressed: () async{



          RequestModel obj = RequestModel(title:'foo',body:  'bar',userId:1 );


          
        ResponseModel response = await DioClient().getDioClient().doPost(obj);

        print("output "+response.id.toString());

   // List<Employee> employees=await DioClient().getDioClient().getUsers();
   //
   // print("data from net"+employees[0].title);

   // 1  - button click
          // DioClient - http client
          // pass dio object.
          // getUsers()


        },),
      ),
    );
  }
}
