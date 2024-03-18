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
  final List<String> coursesName = [
    'Web Development',
    'App Development',
    'UI UX Designing',
    'Graphic Designing',
    'WordPress',
    'C++ Programming'
  ];

  int currentIndex = 0;
  final sliderImages = [
    Image.asset('assets/images/banner1.png'),
    Image.asset('assets/images/banner2.png'),
    Image.asset('assets/images/banner3.png'),
    Image.asset('assets/images/banner4.png'),
    Image.asset('assets/images/banner5.png'),
    Image.asset('assets/images/banner6.png'),
    Image.asset('assets/images/banner7.png'),
    Image.asset('assets/images/banner8.png'),
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
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black45,
                    blurRadius: 5,
                    spreadRadius: 3,
                  ),
                ],
              ),
              child: Column(
                children: [
                  CarouselSlider(
                    items: sliderImages,
                    options: CarouselOptions(
                      height: 160,
                      autoPlayInterval: const Duration(seconds: 4),
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
                  sizeBox(0, 5),
                  AnimatedSmoothIndicator(
                    activeIndex: sliderIndex,
                    count: sliderImages.length,
                    effect: const WormEffect(
                      dotHeight: 10,
                      dotWidth: 10,
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
            coursePkg(coursesName[0], "assets/course_images/web.png", context,
                const CourseIntro()),
            sizeBox(0, 8),
            coursePkg(coursesName[1], "assets/course_images/app.png", context,
                const CourseIntro()),
            sizeBox(0, 8),
            coursePkg(coursesName[2], "assets/course_images/uiux.png", context,
                const CourseIntro()),
            sizeBox(0, 8),
            coursePkg(coursesName[3], "assets/course_images/graphic.png",
                context, const CourseIntro()),
            sizeBox(0, 8),
            coursePkg(coursesName[4], "assets/course_images/wordpress.png",
                context, const CourseIntro()),
            sizeBox(0, 8),
            coursePkg(coursesName[5], "assets/course_images/c++.png", context,
                const CourseIntro()),
            sizeBox(0, 10),
          ],
        ),
      ),
    );
  }
}