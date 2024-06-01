import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'login_screen.dart';

class Sign extends StatefulWidget {
  const Sign({super.key});

  @override
  State<Sign> createState() => _SignState();
}

class _SignState extends State<Sign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),

      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 50,right: 20,left: 20),
          child: Center(
            child: Column(
              children: [
                Text("Create Account",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                Text("Let’s Create Account Together",style: TextStyle(fontSize: 15,color: Colors.grey),),
                SizedBox(height: 70,),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Your Name",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)),
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
                            hintText: 'Yash Kalani',
                            hintStyle: TextStyle(color: Colors.black)
                        ),
                      ),
                    ),
                  ),

                ),
                SizedBox(height: 30,),
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

                SizedBox(height: 40,),
                ElevatedButton(onPressed: (){},
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
                SizedBox(height: 40,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already Have An Account?",style: TextStyle(color: Colors.grey),),
                    TextButton(onPressed:(){
                      Navigator.pop(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginScreen(),
                        ),
                      );
                    },
                        child: Text("Sign In",style: TextStyle(color: Colors.black),))
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
