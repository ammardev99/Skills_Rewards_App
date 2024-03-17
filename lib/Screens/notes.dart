import 'package:flutter/material.dart';
import 'package:skills_rewards/Screens/components/widgets.dart';

class Notes extends StatelessWidget {
  const Notes({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          shadowColor: const Color.fromARGB(255, 0, 0, 0),
          elevation: 8,
      
          // centerTitle: true,
          title: const Text(
            "Notes",
            style: TextStyle(fontWeight: FontWeight.w700, color: Colors.white),
          ),
          flexibleSpace:
              Container(decoration: BoxDecoration(gradient: myGradient())),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          children: [
            sizeBox(0, 10),
            Container(
              height: 40,
              decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(10)),
            ),
            sizeBox(0, 20),
            notesCard(
              context,
              "Software Development",
              "12 Nov 2023",
              const Icon(Icons.push_pin_rounded),
            ),
            notesCard(
              context,
              "Flutter Notes",
              "4 Jan 2024",
            ),
            notesCard(
              context,
              "Variables and Types",
              "27 Feb 2024",
            ),
            notesCard(
              context,
              "Important commands",
              "19 Jan 2024",
            ),
          ],
        ),
      ),
    );
  }
}
