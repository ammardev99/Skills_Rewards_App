import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:skills_rewards/Screens/explore.dart';
import 'package:skills_rewards/Screens/learning/learning.dart';
import 'package:skills_rewards/Screens/notes.dart';
import 'package:skills_rewards/Screens/profile.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Color.fromARGB(255, 224, 121, 226),
      )
      
      );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
