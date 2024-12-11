import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import '../Buttons/circle_button.dart';
import '../Buttons/comman_button.dart';
import '../textbox/custom_textbox.dart';
import 'welcome_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Stack(
            children: [
              Image.asset(
                'assets/bg_image2.png',
                fit: BoxFit.contain,
              ),
              Column(
                children: [
                  Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20, top: 38),
                        child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(Icons.arrow_back_rounded),
                        ),
                      )),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, top: 38),
                    child: Column(
                      children: [
                        const Text(
                          'Create your account',
                          style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 63, 65, 78)),
                        ),
                        SizedBox(
                          height: height * 0.04,
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleButton(
                              svgImage: 'assets/facebook.svg',
                              color: Color.fromARGB(255, 117, 131, 202),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            CircleButton(
                              svgImage: 'assets/google.svg',
                              color: Color.fromARGB(255, 242, 243, 247),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: height * 0.04,
                        ),
                        const Text(
                          'OR LOG IN WITH EMAIL',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 161, 164, 178)),
                        ),
                        SizedBox(
                          height: height * 0.04,
                        ),
                        const CustomTextBox(
                            text: 'Tony Stark',
                            icon: Icons.done_rounded,
                            color: Colors.green),
                        SizedBox(
                          height: height * 0.03,
                        ),
                        const CustomTextBox(
                            text: 'TonyStark@gmail.com',
                            icon: Icons.done_rounded,
                            color: Colors.green),
                        SizedBox(
                          height: height * 0.03,
                        ),
                        const CustomTextBox(
                            text: '*********',
                            icon: Icons.visibility_off,
                            color: Colors.black),
                        const SizedBox(
                          height: 22,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Text('I have read the '),
                            GestureDetector(
                                onTap: () {},
                                child: const Text(
                                  'Privacy Policy',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color:
                                          Color.fromARGB(255, 117, 131, 202)),
                                )),
                          ],
                        ),
                        SizedBox(height: height * 0.14),
                        CommanButton(
                          fontColor: Colors.white,
                          text: 'SIGN UP',
                          color: const Color.fromARGB(255, 142, 151, 253),
                          onClick: () {
                            Navigator.push(
                                context,
                                PageTransition(
                                    type: PageTransitionType.rightToLeft,
                                    child: WelcomeScreen()));
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
