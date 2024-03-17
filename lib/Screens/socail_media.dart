import 'package:flutter/material.dart';
import 'package:skills_rewards/Screens/components/assets.dart';
import 'package:skills_rewards/Screens/components/widgets.dart';
import 'package:url_launcher/url_launcher.dart';

class SocailMedia extends StatelessWidget {
  const SocailMedia({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: const BackButton(
            color: Colors.white,
          ),
          title: subHeading('Join Us', Colors.white),
          centerTitle: true,
          flexibleSpace:
              Container(decoration: BoxDecoration(gradient: myGradient())),
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
                onPressed: () {
                  _launchURL;
                  // ScaffoldMessenger.of(context).showSnackBar(
                  //   SnackBar(
                  //     content: heading(
                  //         'Under Maintenance',
                  //         // style: TextStyle(color: Colors.white),
                  //         Colors.white),
                  //     duration: const Duration(milliseconds: 500),
                  //   ),
                  // );
                },
                icon: const Icon(
                  Icons.facebook_rounded,
                  size: 60,
                )),
            IconButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: heading(
                        'Under Maintenance',
                        // style: TextStyle(color: Colors.white),
                        Colors.white),
                    duration: const Duration(milliseconds: 500),
                  ));
                },
                icon: const Icon(
                  Icons.group_work_rounded,
                  size: 60,
                )),
            IconButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: heading(
                        'Under Maintenance',
                        // style: TextStyle(color: Colors.white),
                        Colors.white),
                    duration: const Duration(milliseconds: 500),
                  ));
                },
                icon: const Icon(
                  Icons.dataset_linked_outlined,
                  size: 60,
                )),
          ],
        ),
      ),
    );
  }
  _launchURL() async {

    final Uri url = Uri.parse('https://facebook.com');
                    // print('_launchUR');
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }

}
