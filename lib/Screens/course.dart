import 'package:flutter/material.dart';
import 'package:skills_rewards/Screens/components/widgets.dart';
import 'package:skills_rewards/Screens/lesson.dart';

class Course extends StatelessWidget {
  const Course({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(
          color: Colors.white,
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(gradient: myGradient(),
          
          ),
        ),
      ),
      body: Column(children: [
        courseTopCard("HTML", "By Ammar", "assets/course_logo/html.png"),


        lessonCard(
           
            "Introduction",
            "15 min",context,const PlayLesson()),
        lessonCard(
            
            "Installation ",
            "10 min",context,const PlayLesson()),
        lessonCard(
            
            "Basics of Course",
            "50 min",context,const PlayLesson()),
      ]),
    );
  }
}
