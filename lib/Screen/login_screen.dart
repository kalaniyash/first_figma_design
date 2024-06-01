import 'dart:io';

import 'package:figma_design/Screen/recovery_screen.dart';
import 'package:figma_design/Screen/serach_screen.dart';
import 'package:figma_design/Screen/sigup.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../main.dart';
import 'details_screen.dart';
import 'favourite_screen.dart';
import 'mainscreen_screen.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new, color: Colors.black),
          onPressed: () => exit(0),
        ),

      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 90,right: 20,left: 20),
          child: Center(
            child: Column(
              children: [
                Text("Hello Again!",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                Text("Welcome Back You’ve Been Missed!",style: TextStyle(fontSize: 15,color: Colors.grey),),
                SizedBox(height: 70,),
                Align(
                  alignment: Alignment.centerLeft,
                    child: Text("Email Address",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)),
                SizedBox(height: 5,),
                Container(
                  width: double.infinity,
                  height: 50,
                  child: Card(
        
                    elevation: 10,
                    shadowColor: Colors.grey,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                     child: Padding(
                       padding: const EdgeInsets.only(left: 15),
                       child: TextField (
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'yesdivyes2018gmail.com',
                            hintStyle: TextStyle(color: Colors.black)
                          ),
                        ),
                     ),
                  ),
        
                ),
                SizedBox(height: 30,),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Password",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)),
                SizedBox(height: 5,),
                Container(
                  width: double.infinity,
                  height: 50,
                  child: Card(
        
                    elevation: 10,
                    shadowColor: Colors.grey,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: TextField (
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: '**********',
                            hintStyle: TextStyle(color: Colors.black),
                            suffixIcon: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: FaIcon(FontAwesomeIcons.eyeLowVision,size: 20,),
                            ),

                          suffixIconColor: Colors.black
                        ),
                      ),
                    ),
                  ),
        
                ),
                SizedBox(height: 5,),
                Align(
                  alignment: Alignment.centerRight,
             child:TextButton(onPressed: (){
               Navigator.push(
                 context,
                 MaterialPageRoute(
                   builder: (context) => RecoveryScreen(),
                 ),
               );
             }, child: Text("Recovery Password",style: TextStyle(color: Colors.grey),)),),
                SizedBox(height: 40,),
                ElevatedButton(onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomePage(),
                    ),
                  );
                },
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(double.infinity, 50),
                      backgroundColor: Colors.blue.shade300,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: Text("Sign In",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),)),
                SizedBox(height: 40,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
        
                  children: [
                    CircleAvatar(
                     child: Image.asset('assets/images/khushow.png'),
                      backgroundColor: Colors.transparent,
                      minRadius: 10,
                      maxRadius: 20,
                    ),
                    SizedBox(width: 10,),
                    Text("Sign in with google",style: TextStyle(fontSize: 17),),
        
                  ],
                ),
                SizedBox(height: 70,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't Have An Account?",style: TextStyle(color: Colors.grey),),
                    TextButton(onPressed:(){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Sign(),
                        ),
                      );
                    },
                        child: Text("Sign Up For Free",style: TextStyle(color: Colors.black),))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
