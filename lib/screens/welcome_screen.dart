import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meditation/screens/selection_screen.dart';
import 'package:page_transition/page_transition.dart';

import '../Buttons/comman_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(children: [
        Positioned.fill(
          child: SvgPicture.asset(
            'assets/welcome.svg',
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 28),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('S i l e n t ',
                        style: TextStyle(
                            fontSize: height * 0.03,
                            fontWeight: FontWeight.bold)),
                    SvgPicture.asset("assets/logo.svg",
                        fit: BoxFit.cover, height: height * 0.03),
                    Text('  M o o n',
                        style: TextStyle(
                            fontSize: height * 0.03,
                            fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.08,
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
              const Spacer(),
              CommanButton(
                color: Colors.white,
                fontColor: Colors.black,
                text: 'GET STARTED',
                onClick: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          type: PageTransitionType.rightToLeft,
                          child: const SelectionScreen()));
                },
              ),
              SizedBox(
                height: height * 0.02,
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
