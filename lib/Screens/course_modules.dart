import 'package:flutter/material.dart';
import 'package:skills_rewards/Screens/components/widgets.dart';
import 'package:skills_rewards/Screens/course.dart';

class CourseModules extends StatelessWidget {
  const CourseModules({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(
          color: Colors.white,
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(gradient: myGradient()),
        ),
      ),
      body: Column(children: [
        courseTopCard("Web Development", "By Ammar","assets/course_images/web.png"),
        moduleCard(
          "assets/course_logo/html.png",
            // const Icon(
            //   Icons.html_rounded,
            //   color: Colors.black12,
            //   size: 40,
            // ),
            "HTML",
            "15 Lesson",context,const Course()),
        moduleCard(
            "assets/course_logo/css.png",
            "CSS",
            "10 Lesson",context,const Course()),
        moduleCard(
            "assets/course_logo/web.jpg",
            "module",
            "50 Lesson",  context,const Course()),
      ]),
    );
  }
}
