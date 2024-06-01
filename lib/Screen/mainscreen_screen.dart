import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'favourite_screen.dart';
class MainscreenScreen extends StatefulWidget {
  const MainscreenScreen({super.key});

  @override
  State<MainscreenScreen> createState() => _MainscreenScreenState();
}

class _MainscreenScreenState extends State<MainscreenScreen> {

  double defaultWidth = 40.0;
  double expandedWidth = 80.0;
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Padding(
        padding: const EdgeInsets.only(top: 60, right: 20, left: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset('assets/images/fourdots.png',width: 25,),
                Column(
                  children: [
                    Text(
                      'Store location',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey.shade700,
                      ),
                    ),
                    Row(
                      children: [
                        Icon(Icons.not_listed_location_rounded, color: Colors.red),
                        Text(
                          'Ahmedabad, 380009',
                          style: TextStyle(fontSize: 17),
                        ),
                      ],
                    ),
                  ],
                ),
                Icon(Icons.shopping_bag_outlined,size: 30,)
              ],
            ),
            SizedBox(height: 30),
            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: 'Looking for laptop',
                prefixIcon: Icon(Icons.search_rounded, color: Colors.black),
                hintStyle: TextStyle(fontWeight: FontWeight.bold),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(40),
                ),
              ),
            ),
            SizedBox(height: 15,),
        Container(
          height: 80,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10, // Number of containers you want to display
            itemBuilder: (BuildContext context, int index) {
              return Container(
                height: 40,
                width: 40,
                margin: EdgeInsets.all(10), // Margin between each container
                child: Icon(Icons.apple_sharp),
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
              );
            },
          ),
        ),
            SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Popular",
                  style: TextStyle(color: Colors.black, fontSize: 17),
                ),
                InkWell(
                  onTap: () => FavouriteScreen(),
                  child: Text(

                    "See all",
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            SizedBox(
              height: 220,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Stack(
                    children: [
                      Container(
                        width: 170,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20, left: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                'assets/images/onepageviw.png',
                                width: 120,
                              ),
                              SizedBox(height: 25),
                              Text(
                                'BEST SELLER',
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 10,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                'MacBook',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                "777.00",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          width: 40,
                          height: 35,
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 17 ),
                  Stack(
                    children: [
                      Container(
                        width: 160,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20, left: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                'assets/images/onepageviw.png',
                                width: 120,
                              ),
                              SizedBox(height: 25),
                              Text(
                                'BEST SELLER',
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 10,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                'MacBook pro',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                "789.99",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          width: 40,
                          height: 35,
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 10,),
                  Stack(
                    children: [
                      Container(
                        width: 160,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20, left: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                'assets/images/onepageviw.png',
                                width: 120,
                              ),
                              SizedBox(height: 25),
                              Text(
                                'BEST SELLER',
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 10,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                'MacBook',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                "777.00",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          width: 40,
                          height: 35,
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  // Add more Stack widgets here if needed
                ],
              ),
            ),
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "New Arrivals",
                  style: TextStyle(color: Colors.black, fontSize: 17),
                ),
                Text(
                  "See all",
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(height: 10,),
            Container(
              width: double.infinity,
              height: 140,
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Best Choice",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.blue),),
                          SizedBox(height: 10,),
                          Text("Mac Mini",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                        SizedBox(height: 10,),
                          Text("678.69",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                        ],
                      ),
                      Image.asset('assets/images/secondpageviw.png',),
                    ],
                  ),
                ),
                elevation: 12,
                shadowColor: Colors.grey,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),

              ),

            ),
          ],
        ),
      ),
    );
  }
}
