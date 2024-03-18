import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:skills_rewards/Screens/components/assets.dart';
import 'package:skills_rewards/Screens/components/widgets.dart';
import 'package:skills_rewards/Screens/courseintro.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// import 'package:flutter/ge';
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

  bool favIcon = true;

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
                          builder: (context) => const CourseIntro()),
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
                                    AssetImage("assets/course_images/web.png"),
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
                                heading(coursesName[0], secondaryColor),
                                const Text("HTML | CSS | JavaScript | React "),
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
            sizeBox(0, 8),
            sizeBox(0, 70),
          ],
        ),
      ),
    );
  }
}
