import 'package:flutter/material.dart';
import 'package:skills_rewards/Screens/course_modules.dart';
import 'package:skills_rewards/Screens/components/widgets.dart';

class Learning extends StatefulWidget {
  const Learning({super.key});

  @override
  State<Learning> createState() => _LearningState();
}

class _LearningState extends State<Learning> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: const Color.fromARGB(255, 0, 0, 0),
        elevation: 8,
        flexibleSpace:
            Container(decoration: BoxDecoration(gradient: myGradient())),
      ),
      body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              sizeBox(0, 20),
              // top Gradient
              Container(
                height: 120,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  gradient: myGradient(),
                ),
                child: Center(
                    child: Container(
                  padding: const EdgeInsets.all(8.0),
                  height: 80,
                  width: 340,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(120, 255, 255, 255),
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromARGB(40, 167, 167, 167),
                        offset: Offset(0.0, 0), // Shadow position
                        blurRadius: 3.0, // Shadow spread
                        spreadRadius: 5.0, // Shadow size
                      ),
                    ],
                  ),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(201, 255, 255, 255),
                              borderRadius: BorderRadius.circular(100),
                              image: const DecorationImage(
                                image: AssetImage("assets/images/profile.jpg"),
                                opacity: 0.3,
                              )),
                          // child: Image.asset("assets/images/profile.jpg"),
                        ),
                        sizeBox(10, 0),
                        const SizedBox(
                          width: 180,
                          // color: Colors.black12,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "My Name",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text("myemail@gmail.com"),
                            ],
                          ),
                        ),
                        Container(
                          width: 60,
                          // color: Colors.black12,
                        ),
                      ]),
                )),

                // child: Container(height: 10, width: 10, color: Colors.white,),
              ),

              sizeBox(0, 10),

              courseCard("Web Development", "assets/course_images/web.png",
                  context, const CourseModules())
            ],
          )),
    );
  }
}
