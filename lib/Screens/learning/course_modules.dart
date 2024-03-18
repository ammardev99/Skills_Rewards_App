import 'package:flutter/material.dart';
import 'package:skills_rewards/Screens/components/widgets.dart';
import 'package:skills_rewards/Screens/learning/course.dart';

class CourseModules extends StatelessWidget {
  const CourseModules({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: const BackButton(
            color: Colors.white,
          ),
          flexibleSpace: Container(
            decoration: BoxDecoration(gradient: myGradient()),
          ),
        ),
        body: Column(children: [
          courseTopCard("HTML", "By Mr. Ammar","assets/course_logo/html.png"),
          moduleCard(
            "assets/images/default_img.jpeg",
              "Introduction and Setup",
              "3 Lesson",context,const Course()),
              sizeBox(0, 10),
          moduleCard(
            "assets/images/default_img.jpeg",
              "Heading",
              "2 Lesson",context,const Course()),
              sizeBox(0, 10),
          moduleCard(
            "assets/images/default_img.jpeg",
              "Formating",
              "5 Lesson",  context,const Course()),
              sizeBox(0, 10),
        ]),
      ),
    );
  }
}
