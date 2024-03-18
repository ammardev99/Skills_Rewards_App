import 'package:flutter/material.dart';
import 'package:skills_rewards/Screens/admin/add_course.dart';
import 'package:skills_rewards/Screens/components/widgets.dart';
import 'package:skills_rewards/Screens/edit_profile.dart';
import 'package:skills_rewards/Screens/socail_media.dart';
import 'package:skills_rewards/auth/login.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: ListView(
        children: [
          Container(
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(),
              child: Container(
                padding: const EdgeInsets.only(top: 20),
                height: 190,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  gradient: myGradient(),
                ),
                child: Center(
                  child: ListTile(
                    leading: const CircleAvatar(
                      backgroundImage: AssetImage(
                        "assets/images/profile.jpg",
                      ),
                    ),
                    title: const Text(
                      "Student Name",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w500),
                    ),
                    subtitle: const Text(
                      'studentemail@gmail.com',
                      style: TextStyle(
                        color: Colors.white,
                        // color: primaryColor,
                      ),
                    ),
                    trailing: const Icon(
                      Icons.edit,
                      color: Color(0xFFffffff),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const EditProfile()));
                    },
                  ),
                ),
              )),
          // menuOption(
          //   const Icon(Icons.favorite_border_rounded),
          //   'My Favorite',
          //   context,
          // ),
          // menuOption(
          //   const Icon(Icons.assignment_outlined),
          //   'CV | Resume',
          //   context,
          // ),
          menuOption(
            const Icon(Icons.card_giftcard_rounded),
            'Donate',
            context,
          ),
          // menuOption(
          //   const Icon(Icons.history),
          //   'History',
          //   context,
          // ),
          menuOption(
            const Icon(Icons.support_agent_rounded,),
            'Help',
            context,
          ),
          menuOption(
            const Icon(Icons.info_outline_rounded),
            'About us',
            context,
          ),
          menuOption(
              const Icon(
                Icons.account_tree_outlined,
              ),
              'Community',
              context,
              const SocailMedia()),
          menuOption(const Icon(Icons.bookmark_add_outlined), 'Add Course',
              context, const AddCourse()),
          menuOption(
              const Icon(Icons.logout), 'Log Out', context, const LogIn()),
        ],
      )),
    );
  }
}
