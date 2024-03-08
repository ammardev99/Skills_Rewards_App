import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:skills_rewards/Screens/components/widgets.dart';
import 'package:skills_rewards/Screens/courseintro.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Explore extends StatefulWidget {
  const Explore({super.key});
  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  int currentIndex = 0;
  final sliderImages = [
    Image.asset('assets/images/banner.png'),
    Image.asset('assets/images/card.jpg'),
    Image.asset('assets/images/banner.png'),
    Image.asset('assets/images/card.jpg'),
  ];
  final List<String> coursesName = [
    'Web Development',
    'App Development',
    'UI UX Designing',
    'Graphic Designing',
    'WordPress',
    'C++ Programming'
  ];

  int sliderIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            // top Gradient
            Container(
              padding: const EdgeInsets.only(top: 20, bottom: 20),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                gradient: myGradient(),
              ),
              child: Column(
                children: [
                  CarouselSlider(
                    items: sliderImages,
                    options: CarouselOptions(
                      height: 180,
                      // autoPlayCurve: Curves.fastOutSlowIn,
                      autoPlayInterval: const Duration(seconds: 2),
                      autoPlayCurve: Curves.easeInOutCirc,
                      enlargeCenterPage: true,
                      autoPlay: true,
                      pauseAutoPlayOnTouch: true,
                      onPageChanged: (index, reason) {
                        setState(() {
                          sliderIndex = index;
                        });
                      },
                    ),
                  ),
                  sizeBox(0, 10),
                  AnimatedSmoothIndicator(
                    activeIndex: sliderIndex,
                    count: sliderImages.length,
                    effect: const WormEffect(
                      dotHeight: 10,
                      dotWidth: 10,
                      // spacing: 10,
                      // paintStyle: PaintingStyle.fill,
                      dotColor: Colors.white24,
                      activeDotColor: Colors.white54,
                    ),
                  ),
                ],
              ),
            ),
            sizeBox(0, 5),

            // course cards
            sizeBox(0, 8),
            courseCard(coursesName[0], "assets/course_images/web.png", context,
                const CourseIntro()),
            sizeBox(0, 8),
            // courseCard(coursesName[1], "assets/course_images/app.png", context,
            //     const CourseIntro()),
            courseCard(coursesName[1], "assets/course_images/app.png", context,
                const CourseIntro()),
            sizeBox(0, 8),
            courseCard(coursesName[2], "assets/course_images/uiux.png", context,
                const CourseIntro()),
            sizeBox(0, 8),
            courseCard(coursesName[3], "assets/course_images/graphic.png",
                context, const CourseIntro()),
            sizeBox(0, 8),
            courseCard(coursesName[4], "assets/course_images/wordpress.png",
                context, const CourseIntro()),
            sizeBox(0, 8),
            courseCard("Flutter", "assets/course_images/c++.png", context,
                const CourseIntro()),
            sizeBox(0, 8),
            courseCard(coursesName[5], "assets/course_images/c++.png", context,
                const CourseIntro()),
            sizeBox(0, 8),
            courseCard(coursesName[5], "assets/course_images/c++.png", context,
                const CourseIntro()),
          ],
        ),
      ),
    );
  }
}




              // Container(
              //     height: 180,
              //     width: 340,
              //     decoration: BoxDecoration(
              //       color: Colors.white,
              //       // gradient: myGradient(),
              //       borderRadius: BorderRadius.circular(5),
              //       image:

              //       const DecorationImage(
              //         image: AssetImage("assets/images/banner.png"),
              //         fit: BoxFit.fill,
              //       ),
              //       boxShadow: const [
              //         BoxShadow(
              //           color: Color.fromARGB(40, 0, 0, 0),
              //           offset: Offset(0.0, 0), // Shadow position
              //           blurRadius: 3.0, // Shadow spread
              //           spreadRadius: 5.0, // Shadow size
              //         ),
              //       ],
              //     ),
              // child: const Text("data")
              
              // )
