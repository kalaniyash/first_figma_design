import 'dart:async';
import 'package:figma_design/main.dart';
import 'package:flutter/material.dart';

import 'onboarding_screen.dart';

class SplachScreen extends StatefulWidget {
  const SplachScreen({Key? key}) : super(key: key);

  @override
  State<SplachScreen> createState() => _SplachScreenState();
}

class _SplachScreenState extends State<SplachScreen> {

  @override
  void initState() {

    super.initState();
    Timer(Duration(seconds: 3),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => OnboardingScreen(),));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          Container(
            height: double.infinity,
            width: double.infinity,
            child: Image.asset(
              'assets/images/Splash.jpg',
              fit: BoxFit.cover,
            ),
          ),
          // Add other widgets on top of the background image if needed

    );
  }
}
