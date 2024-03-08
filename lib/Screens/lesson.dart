import 'package:flutter/material.dart';
import 'package:skills_rewards/Screens/components/assets.dart';
import 'package:skills_rewards/Screens/components/widgets.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class PlayLesson extends StatefulWidget {
  const PlayLesson({super.key});

  @override
  State<PlayLesson> createState() => _PlayLessonState();
}

class _PlayLessonState extends State<PlayLesson> {
    final YoutubePlayerController _ycontroller = YoutubePlayerController(
    initialVideoId: 'TcOEt6TdoYQ'
    ) ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
             leading: const BackButton(
          color: Colors.white,
        ),
        centerTitle: true,
 
        title: const Text(
          "HTML",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        flexibleSpace:
            Container(decoration: BoxDecoration(gradient: myGradient())),
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [

        YoutubePlayer(controller:_ycontroller ),
        // Container(
        //       width: MediaQuery.of(context).size.width,
        //   height: 230,
        //    decoration: const BoxDecoration(
        //     color: Color.fromARGB(149, 0, 0, 0),
        //     image: DecorationImage(image: AssetImage("assets/images/onlinecourse.jpg"),
        //     fit: BoxFit.fill,
        //     opacity: 0.6,
        //     ),

        //   ),child: IconButton(
        //       onPressed: () {},
        //       icon: const Icon(Icons.play_circle_fill_rounded,
        //           size: 50, color: Color(0xFFE531E9))),
        // ),
        Padding(
          padding: const EdgeInsets.only(left: 10, top: 8),
          child: heading1("Introduction Lesson", Colors.black),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8),
          child: subHeading("By Ammar", Colors.black),
        ),
        const Padding(
          padding: EdgeInsets.all(10),
          child: Text(
              "The Monstera Adansonii grows best in a well-draining Aroid mix using bark, perlite, peat moss, and charcoal. Keep your plant in bright indirect light and humidity above 60%. When watering, make sure that the potting mix of your Adansonii remains slightly moist ", textAlign: TextAlign.justify,),
        ),
        sizeBox(0, 15),
        Center(child: quizCard("Quiz 1","5 Questions")),
        Center(child: quizCard("Quiz 2","10 Questions")),
      ]),
    );
  }
}
