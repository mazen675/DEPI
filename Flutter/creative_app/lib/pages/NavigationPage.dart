import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'TemplatePage.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({super.key});

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  int _pageIndex = 0;
  final pages = const [
    TemplatePage(
      mainIcon: Icons.home_outlined,
      mainText: "Welcome Home!",
      buttonIcon: Icons.explore,
      buttonText: "Explore",
    ),
    TemplatePage(
      mainIcon: Icons.search,
      mainText: "Find What You Need!",
      buttonIcon: Icons.search,
      buttonText: "Start Searching",
    ),
    TemplatePage(
      mainIcon: Icons.person_2_outlined,
      mainText: "Your Profile",
      buttonIcon: Icons.edit,
      buttonText: "Edit Profile",
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.star,
              color: Colors.white,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              "Creative App",
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
        backgroundColor: Colors.purpleAccent,
      ),
      body: pages[_pageIndex],
      bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            setState(() {
              _pageIndex = value;
            });
          },
          currentIndex: _pageIndex,
          selectedItemColor: Colors.purpleAccent,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          ]),
    );
  }
}
