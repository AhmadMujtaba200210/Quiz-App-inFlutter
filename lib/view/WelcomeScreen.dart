

import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/quizz_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_application_1/Component/navbarBottom.dart';
class WelcomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    body: Stack(
      children: [
        SvgPicture.asset('assets/welcome_screen.svg',
        fit: BoxFit.cover,
        ),
        SafeArea(
          child:Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Spacer(flex:1),
              Text("Welcome to Quizz App",
              style: Theme.of(context).textTheme.headline5?.copyWith(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              
              Text("Enter your name", style: Theme.of(context).textTheme.headline6?.copyWith(color: Colors.black, fontWeight: FontWeight.bold)),
              TextField(
                decoration: InputDecoration(
                  hintText: "Full Name"
              ),),
              ElevatedButton(onPressed: ()
              {Navigator.push(context, MaterialPageRoute(
                builder: ((context)=>MaterialApp(
                  home: HomeBar(),
                ))
                ),
                );
              },
              child: Text("Let's Start Quiz"),
              style: ElevatedButton.styleFrom(primary: Colors.black),),
              Spacer(flex: 1),
            ],)
            )
            )
      ],
    )
  );
  }

}