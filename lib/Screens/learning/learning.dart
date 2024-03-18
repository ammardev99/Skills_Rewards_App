import 'package:flutter/material.dart';
import 'package:skills_rewards/Screens/components/assets.dart';
import 'package:skills_rewards/Screens/learning/course_modules.dart';
import 'package:skills_rewards/Screens/components/widgets.dart';

class Learning extends StatefulWidget {
  const Learning({super.key});

  @override
  State<Learning> createState() => _LearningState();
}

class _LearningState extends State<Learning> {
    bool favIcon = true;

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
                                "Full Name",
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

              coursePkg("Web Development", "assets/course_images/web.png",
                  context, const CourseModules()),
              sizeBox(0, 8),
            
            
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: InkWell(
                  hoverColor: Colors.white,
                  splashColor: secondaryColor03,
                  borderRadius: BorderRadius.circular(8),
                  highlightColor: Colors.white,

                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CourseModules()),
                    );
                  },
                  // main container
                  child: Stack(children: [
                    Container(
                      width: MediaQuery.of(context).size.width >= 360
                          ? 370
                          : MediaQuery.of(context).size.width,
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(width: 1, color: secondaryColor03),
                        boxShadow: [myBoxShadow()],
                      ),
                      child: Row(
                        children: [
                          // Thumbnail
                          Container(
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                              border:
                                  Border.all(width: 1, color: secondaryColor03),
                              borderRadius: BorderRadius.circular(8),
                              image: const DecorationImage(
                                image:
                                    AssetImage("assets/course_logo/html.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          // Thumbnail end
                          const SizedBox(width: 15),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                heading('HTML', secondaryColor),
                                const Text("Intro | Heading | Formating | Links "),
                                const SizedBox(height: 8),
                                SizedBox(child: pkgInfoIcons(5, 3.5, 25, 10)),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                        right: 0,
                        child: IconButton(
                            onPressed: () {
                              setState(() {
                                favIcon = favIcon == true ? false : true;
                              });
                            },
                            icon: favIcon == true
                                ? const Icon(
                                    Icons.favorite_border_rounded,
                                    color: Colors.grey,
                                  )
                                : Icon(
                                    Icons.favorite,
                                    color: secondaryColor,
                                  )))
                  ]),
                )),

            ],
          )),
    );
  }
}
