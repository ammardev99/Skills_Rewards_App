import 'package:flutter/material.dart';
import 'package:skills_rewards/Screens/components/assets.dart';
import 'package:skills_rewards/Screens/components/widgets.dart';

class SocailMedia extends StatelessWidget {
  const SocailMedia({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: heading(
                        'Under Maintenance',
                        // style: TextStyle(color: Colors.white),
                        Colors.white),
                        duration: const Duration(milliseconds: 500),
                        
                        )
                      
                        );
              },
              icon: const Icon(
                Icons.facebook_rounded,
                size: 60,
              )),
          IconButton(
              onPressed: () {ScaffoldMessenger.of(context).showSnackBar(SnackBar(
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
              onPressed: () {ScaffoldMessenger.of(context).showSnackBar(SnackBar(
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
    );
  }
}
