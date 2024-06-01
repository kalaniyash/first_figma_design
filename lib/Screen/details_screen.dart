import 'dart:io';

import 'package:flutter/material.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(Icons.shopping_bag_outlined,color: Colors.black,),
          ),
        ],
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new, color: Colors.black,size: 18,),onPressed: (){},
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text('Details',style: TextStyle(color: Colors.black),),
      ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 60),
                child: Image.asset('assets/images/onepageviw.png',width: 250,),
              ),
              SizedBox(height: 40,),
              Expanded(
                child: Container(
                 // height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(

                   color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(20),
                   child:  Column(
                     mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('BEST SELLER',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.w900,fontSize: 13),),
                        SizedBox(height: 5,),
                        Text('Mackbook Pro',style: TextStyle(color: Colors.black,fontSize: 24),),
                        SizedBox(height: 10,),
                        Text("798.99",style: TextStyle(color: Colors.black,fontSize: 20),),
                        SizedBox(height: 5,),
                        Padding(
                          padding: const EdgeInsets.only(right: 30),
                          child: Text('MacBook Pro and the new MacBook Air 13″ and 15″. Buy direct from Apple. Customise your Mac. Build it just the way you want.',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w900,fontSize: 13),),
                        ),
                        SizedBox(height: 10,),
                        Text('Colors',style: TextStyle(color: Colors.black,fontSize: 20),),
                        SizedBox(height: 18,),
                        Row(
                          children: [
                            Container(
                              height:50,
                              width: 50,
                              decoration: BoxDecoration(

                                color: Colors.blue,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),

                                ),
                              ),
                            ),
                            SizedBox(width: 15,),
                            Container(
                              height:50,
                              width: 50,
                              decoration: BoxDecoration(

                                color: Colors.black,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),

                                ),
                              ),
                            ),
                            SizedBox(width: 15,),

                            Container(
                              height:50,
                              width: 50,
                              decoration: BoxDecoration(

                                color: Colors.grey,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),

                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment:MainAxisAlignment.spaceBetween,
                          children: [
                            Text("SSD",style: TextStyle(color: Colors.black,fontSize: 15),),
                            Text("EU US UK",style: TextStyle(color: Colors.black,fontSize: 15),),
                          ],
                        ),
                        SizedBox(height: 20,),
                        Row(
                          children: [
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 8),
                                child: Center(child: Text("256",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey.shade600),)),
                              ),
                              height:40,
                              width: 40,
                              decoration: BoxDecoration(
                                color: Colors.grey.shade200,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),

                                ),
                              ),
                            ),
                            SizedBox(width: 15,),

                            Container(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 8),
                                child: Center(child: Text("512",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey.shade600),)),
                              ),
                              height:40,
                              width: 40,
                              decoration: BoxDecoration(
                                color: Colors.grey.shade200,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),

                                ),
                              ),
                            ),
                            SizedBox(width: 15,),

                            Container(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 8),
                                child: Center(child: Text("1TB",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),)),
                              ),
                              height:40,
                              width: 40,
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),

                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 40,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Price',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w900,fontSize: 16),),
                               SizedBox(height: 5,),
                                Text("798.99",style: TextStyle(color: Colors.black,fontSize: 20),),

                              ],
                            ),
                            ElevatedButton(
                                onPressed: (){},
                                style: ElevatedButton.styleFrom(
                                  minimumSize: Size(50, 50),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(40),
                                    )
                                ),
                                child: Text('Add To Card',style: TextStyle(fontSize: 18),)),
                          ],
                        )
                      ],
                    ),

                  ),
                ),
              ),

            ],
          ),
        ),
    );
  }
}
