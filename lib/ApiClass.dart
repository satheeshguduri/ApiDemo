import 'dart:async';

import 'package:connectivity/connectivity.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:thirdapp/employee.dart';
import 'package:thirdapp/listviewcontroller.dart';
import 'package:thirdapp/requestmodel.dart';
import 'package:thirdapp/responsemodel.dart';

import 'dioclient.dart';

class ApiClass extends StatefulWidget {
  @override
  _ApiClassState createState() => _ApiClassState();
}

class _ApiClassState extends State<ApiClass> {

  int value;

  String defaultValue = 'A';

  ListViewController listViewController = ListViewController();


  var status;
  var connectivity;
  StreamSubscription<ConnectivityResult> subscription;

  void initState() {
    super.initState();
    connectivity = new Connectivity();
    subscription = connectivity.onConnectivityChanged.listen((ConnectivityResult result){
      status = result.toString();

    });


  }



  @override
  Widget build(BuildContext context) {

   // print(ConnectivityResult.wifi.toString());


    return Scaffold(

      appBar: AppBar(title: Text("Api Demo"),),
      body: Column(


        children: [

           DropdownButton<String>(
             value: defaultValue,
            items: <String>['A', 'B', 'C', 'D'].map((String value) {
              return  DropdownMenuItem<String>(
                value: value,
                child:  Text(value),  // column(threed childrens
              );
            }).toList(),
            onChanged: (value) {
               setState(() {
              defaultValue = value;
               });
              print(value);
            },

          )
          // Container(
          //   margin: EdgeInsets.only(top: 100),
          //   child: RaisedButton(child:Text("download"),onPressed: () async{
          //
          //
          //
          //     RequestModel obj = RequestModel(title:'foo',body:  'bar',userId:1 );
          //
          //
          //
          //     ResponseModel response = await DioClient().getDioClient().doPost(obj);
          //
          //     print("output "+response.id.toString());
          //
          //     // List<Employee> employees=await DioClient().getDioClient().getUsers();
          //     //
          //     // print("data from net"+employees[0].title);
          //
          //     // 1  - button click
          //     // DioClient - http client
          //     // pass dio object.
          //     // getUsers()
          //
          //
          //   },),
          // ),
     // Expanded(
     //   child: FutureBuilder(
     //          future:DioClient().getDioClient().getUsers(),
     //            builder: (BuildContext context, AsyncSnapshot<List<Employee>> snapshot) {
     //              switch (snapshot.connectionState) {
     //                case ConnectionState.waiting:
     //                  return Text('Loading....');
     //                default:
     //                  if (snapshot.hasError)
     //                    return Text('Error: ${snapshot.error}');
     //                  else
     //                    return ListView.builder
     //                      (
     //                        itemCount: snapshot.data.length,
     //                        itemBuilder: (BuildContext ctxt, int index) {
     //                        listViewController.listItems.value= snapshot.data;
     //                        return  RadioListTile(
     //                            value: index,
     //                            groupValue: value,
     //                            onChanged: (ind) => Get.defaultDialog(title: "Message",content: Obx(()=>(Text(listViewController.listItems[index].title)))),
     //                            title: Text(snapshot.data[index].title),
     //                          );
     //                         // return new Text(snapshot.data[index].title);
     //                        }
     //                    );
     //                   // return Text('Result: ${snapshot.data[0].title}');
     //              }
     //            } ),
     // )

        ],
      ),
    );
  }
}

