import 'package:flutter/material.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({Key? key}) : super(key: key);

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(
              Icons.heart_broken,
              color: Colors.black,
            ),
          )
        ],
        title: Text(
          "Favourite",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
            size: 18,
          ),
          onPressed: () {},
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Popular",
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
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Stack(
                  children: [
                    Container(
                      height: 220,
                      width: 160,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20,left: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              'assets/images/onepageviw.png',
                              width: 120,
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            Text(
                              'BEST SELLER',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 10),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Mackbook',
                              style: TextStyle(
                                  color: Colors.black, fontSize: 20),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "777.00",
                              style: TextStyle(
                                  color: Colors.black, fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 00,
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
                            bottomRight: Radius.circular(20)
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),

                  ],
                ),

                Stack(
                  children: [
                    Container(
                      height: 220,
                      width: 160,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20,left: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              'assets/images/onepageviw.png',
                              width: 120,
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            Text(
                              'BEST SELLER',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 10),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Mackbook Pro',
                              style: TextStyle(
                                  color: Colors.black, fontSize: 20),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "798.99",
                              style: TextStyle(
                                  color: Colors.black, fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 00,
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
                              bottomRight: Radius.circular(20)
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),

                  ],
                )
              ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Stack(
                  children: [
                    Container(
                      height: 220,
                      width: 160,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20,left: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              'assets/images/onepageviw.png',
                              width: 120,
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            Text(
                              'BEST SELLER',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 10),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Mackbook',
                              style: TextStyle(
                                  color: Colors.black, fontSize: 20),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "798.99",
                              style: TextStyle(
                                  color: Colors.black, fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 00,
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
                              bottomRight: Radius.circular(20)
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),

                  ],
                ),

                Stack(
                  children: [
                    Container(
                      height: 220,
                      width: 160,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20,left: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              'assets/images/onepageviw.png',
                              width: 120,
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            Text(
                              'BEST SELLER',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 10),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Mackbook',
                              style: TextStyle(
                                  color: Colors.black, fontSize: 20),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "798.99",
                              style: TextStyle(
                                  color: Colors.black, fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 00,
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
                              bottomRight: Radius.circular(20)
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),

                  ],
                )
              ],
            ),

          ],
        ),
      ),
    );
  }
}
