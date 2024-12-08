import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meditaion_app/screens/signup_screen.dart';

import '../Buttons/comman_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(children: [
        SvgPicture.asset(
          'assets/welcome.svg',
          fit: BoxFit.cover,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 28),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('S i l e n t  ',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    SvgPicture.asset(
                      "assets/logo.svg",
                      height: 20,
                      width: 20,
                    ),
                    const Text('  M o o n',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.10,
              ),
              RichText(
                text: const TextSpan(
                  text: 'Hi Tony , Welcome\n',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'to Silent Moon',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: height * 0.03,
              ),
              RichText(
                text: const TextSpan(
                  text: 'Explore the app, Find some peace of mind to\n',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'prepare for meditation.',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: height * 0.10,
              ),
              SvgPicture.asset(
                'assets/lady.svg',
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: height * 0.14,
              ),
              CommanButton(
                color: Colors.white,
                fontColor: Colors.black,
                text: 'LOG IN',
                onClick: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SignUpScreen(),
                      ));
                },
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
