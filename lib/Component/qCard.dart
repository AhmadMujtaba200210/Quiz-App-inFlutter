
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class qCard extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child:
       SingleChildScrollView(
      child:Center(
        child: Container(
          child: Text("I am here"),
          decoration: BoxDecoration(border:Border.all(color: Colors.black)),
        ),
      ),
      ),)
    );
  }

}