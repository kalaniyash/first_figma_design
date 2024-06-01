import 'dart:io';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Screen/details_screen.dart';
import 'Screen/favourite_screen.dart';
import 'Screen/mainscreen_screen.dart';
import 'Screen/serach_screen.dart';
import 'Screen/splach_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        useMaterial3: false,
        primarySwatch: Colors.blue,
      ),
      title: 'Figma Design 1',
      home: SplachScreen(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    MainscreenScreen(),
    DetailsScreen(),
    FavouriteScreen(),
    SerachScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Icon(Icons.home_outlined),
              onPressed: () => _onItemTapped(0),
            ),
            IconButton(
              icon: Icon(Icons.heart_broken),
              onPressed: () => _onItemTapped(1),
            ),
            IconButton(
              icon: Icon(Icons.notifications_outlined),
              onPressed: () => _onItemTapped(2),
            ),
            IconButton(
              icon: Icon(Icons.person_outline_rounded),
              onPressed: () => _onItemTapped(3),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.shopping_bag_outlined),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}



class Screen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Screen 3'),
    );
  }
}

class Screen4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Screen 4'),
    );
  }
}
