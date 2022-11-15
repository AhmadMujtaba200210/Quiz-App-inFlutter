import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/learningscreen.dart';
import 'package:flutter_application_1/view/settings.dart';
import 'package:flutter_application_1/view/stocks.dart';

var _list = ['Text Me', 'I am here', 'Waiting for you'];
var index = [
  LearningScreen(),
  StocksScreen(),
  SettingsScreen()
];


class HomeBar extends StatefulWidget {
  @override
  State<HomeBar> createState() => _HomeBarState();
}

class _HomeBarState extends State<HomeBar> {
  final items = [
    Icon(Icons.home,color: Colors.white,),
    Icon(Icons.price_change,color: Colors.white),
    Icon(Icons.settings,color: Colors.white),
  ];
  @override
  int index=0;
  var indexList = [
  LearningScreen(),
  StocksScreen(),
  SettingsScreen()
];
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: CurvedNavigationBar(
        color: Colors.black87,
        buttonBackgroundColor: Colors.black87,
        backgroundColor: Colors.transparent,
        items: items,
        height: 50,
        onTap: (index)=>setState((){
          this.index=index;
          Navigator.push(context, MaterialPageRoute(
                  builder: ((context)=>MaterialApp(
                    home: indexList[index],
                  ))
                  ),
                  );
        }),
      ),
    );
  }
}


