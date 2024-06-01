import 'package:flutter/material.dart';

class SerachScreen extends StatefulWidget {
  const SerachScreen({super.key});

  @override
  State<SerachScreen> createState() => _SerachScreenState();
}

class _SerachScreenState extends State<SerachScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade200,

        body: Padding(
        padding: const EdgeInsets.only(top: 50,left: 20,right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Recent Search",style: TextStyle(color: Colors.grey),),
            SizedBox(height: 20,),
            Container(
              width: double.infinity,
              height: 140,
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Mac Mini",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
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
            SizedBox(height: 20,),

            Container(
              width: double.infinity,
              height: 140,
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Mac Mini",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
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
            SizedBox(height: 20,),
            Container(
              width: double.infinity,
              height: 140,
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Mac Mini",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
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
            SizedBox(height: 20,),
            Container(
              width: double.infinity,
              height: 140,
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Mac Mini",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
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
      )
    );
  }
}
