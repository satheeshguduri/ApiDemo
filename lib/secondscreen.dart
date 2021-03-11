import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondClass extends StatefulWidget {
  @override
  _SecondClassState createState() => _SecondClassState();
}

class _SecondClassState extends State<SecondClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Theme"),),
      body: Center(child: Text("Second Screen",style: Theme.of(context).textTheme.headline1,),),
    );
  }
}
