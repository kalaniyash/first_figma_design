import 'package:figma_design/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:matcher/matcher.dart';

import 'login_screen.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {


  List onBoardingData =[
    {
      "image": 'assets/images/onepageviw.png',
      "title": 'Macbook',
      "description": 'The Mac experience. Designed to connect with everything Apple.',

    },
    {
      "image": 'assets/images/secondpageviw.png',
      "title": 'Mac mini',
      "description": 'The Macexperience. Designed to connect with everything Apple.',

    },
    {
      "image": 'assets/images/thirdpageviw.png',
      "title": 'Macbook Pro',
      "description": 'The Mac experience. Designed to connect with everything Apple.',

    }
  ];
  PageController pageController = PageController();

  continudemethod(){}
  int currentPage = 0;
  onChanged(int index){
    setState(() {
      currentPage = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            Container(
              width: double.infinity,
              height: double.infinity,
              child: Image.asset(
                'assets/images/bgg.jpg',
                fit: BoxFit.cover,
              ),
            ),

            PageView.builder(
              scrollDirection: Axis.horizontal,
              controller: pageController,
              itemCount: onBoardingData.length,
              onPageChanged: onChanged,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [

                      SizedBox(height: 188),
                      Container(
                        height: 188,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                                onBoardingData[index]['image']),
                            fit: BoxFit.cover,
                          ),

                        ),
                      ),

                      SizedBox(height: 100),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          onBoardingData[index]['title'],
                          style: TextStyle(fontSize: 40, color: Colors.black,fontWeight:FontWeight.w500,fontFamily: 'Poppins',),
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        onBoardingData[index]['description'],
                        style: TextStyle(fontSize: 25, color: Color(0xFF707B81),fontWeight: FontWeight.bold,),
                      ),
                    ],
                  ),
                );
              },
            ),

            Padding(
              padding: const EdgeInsets.only(top: 743, left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: List<Widget>.generate(
                        onBoardingData.length,
                            (index) {
                          return AnimatedContainer(
                            duration: const Duration(microseconds: 200),
                            height: 10,
                            width: (index == currentPage) ? 35 : 13,
                            margin: const EdgeInsets.symmetric(horizontal: 5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: (index == currentPage) ? Colors.blue : Colors.grey,
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  SizedBox(width: 10), // Add some spacing between the button and the containers
                  Expanded(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(200, 50),
                          backgroundColor: Colors.blue.shade300,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        onPressed: () {
                          if (currentPage < onBoardingData.length - 1) {
                            pageController.nextPage(duration: Duration(milliseconds: 500), curve: Curves.ease);
                          } else if (currentPage == onBoardingData.length - 1) {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (BuildContext context) {
                                  return LoginScreen();
                                },
                              ),
                            );
                          }
                        },


                        child: Text(
                          currentPage < onBoardingData.length - 2 ? 'Get Started' : 'Next',
                          style: TextStyle(fontSize: 18,),
                        ),
                      ),

                  ),
                ],
              ),
            ),

            Positioned(
              top: 40,
              right: 20,
              child: Align(
                  alignment: Alignment.topRight,
               child:    TextButton(
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) {
                            return LoginScreen();
                          },
                        ),
                            (route) => false,
                      );
                    },
                    child: Text(
                      "Skip",
                      style: TextStyle(
                        color: Color(0xFF707B81),
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  )

              ),
            ),


          ],
        ),


    );
  }
}

