import 'package:flutter/material.dart';
import 'package:skills_rewards/Screens/components/assets.dart';
import 'package:skills_rewards/Screens/components/widgets.dart';
import 'package:skills_rewards/Screens/learning/learning.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class CourseIntro extends StatefulWidget {
  const CourseIntro({super.key});

  @override
  State<CourseIntro> createState() => _CourseIntroState();
}

class _CourseIntroState extends State<CourseIntro> {
  final YoutubePlayerController _ycontroller =
      YoutubePlayerController(initialVideoId: '4CrY7sj0Shs');
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: const BackButton(
            color: Colors.white,
          ),
          flexibleSpace:
              Container(decoration: BoxDecoration(gradient: myGradient())),
        ),
        body:  SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              YoutubePlayer(controller: _ycontroller),
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 8),
                child: heading1("Web Development Intro Video", Colors.black),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: subHeading("By Ammar Shafiq", Colors.black),
              ),
              const Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  "The Monstera Adansonii grows best in a well-draining Aroid mix using bark, perlite, peat moss, and charcoal. Keep your plant in bright indirect light and humidity above 60%. When watering, make sure that the potting mix of your Adansonii remains slightly moist ",
                  textAlign: TextAlign.justify,
                ),
              ),
              sizeBox(0, 150),
              Center(
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Learning()));
                  },
                  child: Container(
                                          width: MediaQuery.of(context).size.width,
                      padding:
                          const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          gradient: myGradient()),
                      child: Center(child: heading("Enroll Now", Colors.white))),
                  // Container(
                  //   padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                  //   decoration: BoxDecoration(
                  //     gradient: myGradient(),
                  //     borderRadius: BorderRadius.circular(100),
                  //   ),
                  //   child: heading("Enroll This Course", Colors.white),
                  // ),
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
