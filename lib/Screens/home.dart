import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

import 'explore.dart';
import 'learning/learning.dart';
import 'notes.dart';
import 'profile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;

  final screens = const [
    Explore(),
    Learning(),
    Notes(),
    Profile(),
    // Learning(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        body: screens[currentIndex],
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
            iconTheme: const IconThemeData(color: Colors.white),
          ),
          child: CurvedNavigationBar(
            backgroundColor: Colors.transparent,
            color: const Color(0xFFE531E9),
            buttonBackgroundColor: const Color.fromARGB(255, 203, 32, 163),
            animationDuration: const Duration(milliseconds: 500),
            height: 60,
            items: const [
              Icon(Icons.line_style_rounded),
              // Icon(Icons.favorite),
              Icon(Icons.play_lesson_rounded),
              Icon(Icons.edit_note_rounded),
              Icon(Icons.person),
            ],
            onTap: (int index) {
              setState(() {
                currentIndex = index;
              });
            },
          ),
        ),
      ),
    );
  }
}
