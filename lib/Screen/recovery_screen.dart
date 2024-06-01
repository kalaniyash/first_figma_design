import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RecoveryScreen extends StatefulWidget {
  const RecoveryScreen({super.key});

  @override
  State<RecoveryScreen> createState() => _SignState();
}

class _SignState extends State<RecoveryScreen> {
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
                Text("Recovery Password",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                SizedBox(height: 20,),
                Text("Please Enter Your Email Address To",style: TextStyle(fontSize: 15,color: Colors.grey),),
                Text(" Recieve a Verification Code",style: TextStyle(fontSize: 15,color: Colors.grey),),

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


                SizedBox(height: 40,),
                ElevatedButton(onPressed: (){},
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(double.infinity, 50),
                      backgroundColor: Colors.blue.shade300,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: Text("Continue",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),)),


              ],
            ),
          ),
        ),
      ),
    );
  }
}
