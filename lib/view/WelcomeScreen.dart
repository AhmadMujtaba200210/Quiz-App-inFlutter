

import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/quizz_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_application_1/Component/navbarBottom.dart';
class WelcomeScreen extends StatefulWidget{
  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  return Scaffold(
    body: Stack(
      children: [
        SvgPicture.asset('assets/welcome_screen.svg',
        fit: BoxFit.cover,
        ),
        SafeArea(
          child:Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Form(
              key: formKey,
            child: Column(
              children: [
                Spacer(flex:1),
                SizedBox(height: 100,),
                Text("Want to Invest?",
                style: Theme.of(context).textTheme.headline5?.copyWith(color: Colors.black87, fontWeight: FontWeight.bold),
                ),
                Text("Welcomed !",
                style: Theme.of(context).textTheme.headline5?.copyWith(color: Colors.black87, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20,),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Username"
                ),
                  validator: (value) {
                    if(value==null||value.isEmpty){
                      return 'Please enter username';
                    }
                  },
                ),
                SizedBox(height: 20,),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Password"
                ),
                validator: (value) {
                    if (value == null || value.isEmpty) {
                        return 'Please enter Password';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20,),
                ElevatedButton(onPressed: ()
                {
                  if(formKey.currentState!.validate())
                  Navigator.push(context, MaterialPageRoute(
                  builder: ((context)=>MaterialApp(
                    home: HomeBar(),
                  ))
                  ),
                  );
                },
                child: Text("Let's Start Quiz"),
                style: ElevatedButton.styleFrom(primary: Colors.black87),),
                Spacer(flex: 1),
              ],),
          )
            )
            )
      ],
    )
  );
  }
}