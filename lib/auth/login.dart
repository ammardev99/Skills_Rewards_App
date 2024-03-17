import 'package:flutter/material.dart';
import 'package:skills_rewards/Screens/components/assets.dart';
import 'package:skills_rewards/Screens/components/widgets.dart';
import 'package:skills_rewards/Screens/home.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  final TextEditingController _youTubeIDInput = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            sizeBox(0, 15),
          SizedBox(
            height: 160,
            child: Image.asset('assets/images/skills_rewards_logo.png')),
            sizeBox(0, 15),
            TextFormField(
              controller: _youTubeIDInput,
              decoration: inputStyle('Email', 'Enter Your Email'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please Enter Email';
                }
                return null;
              },
            ),
            sizeBox(0, 15),
            TextFormField(
              controller: _youTubeIDInput,
              decoration: inputStyle('Pasword', 'Enter Your Pasword'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please Enter Pasword';
                }
                return null;
              },
            ),
            sizeBox(0, 20),
            InkWell(
                child: Container(
                    width: MediaQuery.of(context).size.width,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        gradient: myGradient()),
                    child: Center(child: heading("Login", Colors.white))),
                onTap: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const HomePage()));
                })
          ],
        ),
      ),
    );
  }
}
