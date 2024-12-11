import 'package:flutter/material.dart';
import 'package:meditaion_app/Buttons/circle_button.dart';
import 'package:meditaion_app/screens/signup_screen.dart';
import 'package:meditaion_app/screens/welcome_screen.dart';
import 'package:page_transition/page_transition.dart';

import '../Buttons/comman_button.dart';
import '../textbox/custom_textbox.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                          'Welcome Back !',
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
                        const CustomTextBox(text: 'Email address'),
                        SizedBox(
                          height: height * 0.03,
                        ),
                        const CustomTextBox(
                            text: 'Password',
                            icon: Icons.visibility_off,
                            color: Colors.black),
                        const SizedBox(
                          height: 22,
                        ),
                        CommanButton(
                          color: const Color.fromARGB(255, 142, 151, 253),
                          fontColor: Colors.white,
                          text: 'LOG IN',
                          onClick: () {
                            Navigator.push(
                                context,
                                PageTransition(
                                    type: PageTransitionType.rightToLeft,
                                    child: WelcomeScreen()));
                          },
                        ),
                        const SizedBox(
                          height: 22,
                        ),
                        const Text(
                          'Forgot Password?',
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                        SizedBox(
                          height: height * 0.18,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text("DON'T HAVE AN ACCOUNT?"),
                            TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      PageTransition(
                                          type: PageTransitionType.rightToLeft,
                                          child: SignUpScreen()));
                                },
                                child: const Text('SIGN UP'))
                          ],
                        )
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
