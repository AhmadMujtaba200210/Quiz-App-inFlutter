import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Component/qCard.dart';
import 'package:flutter_application_1/view/WelcomeScreen.dart';

class QuizScreen extends StatelessWidget{
  int count=1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Stack(
        children: [
          SafeArea(
            child:Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child:Column(
              children: [
                SizedBox(    
                  height: 50,
                  width: 300,    
                  child: Text("Question:$count/5", textAlign: TextAlign.center, style: Theme.of(context).textTheme.headline4?.copyWith(color: Colors.black,fontWeight: FontWeight.bold),),
                ),
                //Spacer(flex: 1,),
          //qCard(),
          Container(
            height: 500,
            width: 400,
            decoration: BoxDecoration(border: Border.all(color: Colors.black),borderRadius: BorderRadius.circular(12)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                  Text("Question:$count/5", textAlign: TextAlign.center, style: Theme.of(context).textTheme.headline6?.copyWith(color: Colors.black,fontWeight: FontWeight.bold),),
                  OutlinedButton(onPressed:null , child: Text("1.Checking")),
                  OutlinedButton(onPressed:null , child: Text("1.Checking")),
                  OutlinedButton(onPressed:null , child: Text("1.Checking")),
                  OutlinedButton(onPressed:null , child: Text("1.Checking"),style: OutlinedButton.styleFrom(minimumSize: Size(88, 36),  padding: EdgeInsets.symmetric(horizontal: 16),
),),
            ],)
          ),
          //Spacer(flex: 1,),
          ElevatedButton(onPressed: (){
            Navigator.push(
              context, MaterialPageRoute(
                builder: (((context) => WelcomeScreen()))
            ));
          }, child: Text("Exit"),
          style: ElevatedButton.styleFrom(primary: Colors.black),
          )
        ],
            ),
            ),
          )
        ])
      ,);
  }

}


//////////////
/*
          
        ),
    ),Text("I am here"),
            
    ),
      ]),*/