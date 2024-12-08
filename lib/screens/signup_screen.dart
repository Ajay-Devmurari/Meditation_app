import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../Buttons/comman_button.dart';
import '../textbox/custom_textbox.dart';
import 'signup_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 229, 229, 229),
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
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 20, top: 40),
                      child: Icon(
                        Icons.arrow_back_rounded,
                        size: 28,
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, top: 38),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          'Welcome Back!',
                          style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 63, 65, 78)),
                        ),
                        const SizedBox(
                          height: 28,
                        ),
                        CommanButton(
                            svgImage: 'assets/facebook.svg',
                            text: '  CONTINUE WITH FACEBOOK',
                            color: const Color.fromARGB(255, 117, 131, 202),
                            textColor: const Color.fromARGB(255, 246, 241, 251),
                            fontSize: 14,
                            height: 62,
                            width: double.infinity,
                            padding: EdgeInsets.only(left: 4),
                            onClick: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const SignUpScreen(),
                                  ));
                            }),
                        const SizedBox(
                          height: 20,
                        ),
                        CommanButton(
                            svgImage: 'assets/google.svg',
                            borderSide: BorderSide(color: Colors.grey),
                            text: 'CONTINUE WITH GOOGLE',
                            textColor: const Color.fromARGB(255, 63, 65, 78),
                            height: 62,
                            width: double.infinity,
                            fontSize: 14,
                            onClick: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const SignUpScreen(),
                                  ));
                            }),
                        const SizedBox(
                          height: 28,
                        ),
                        const Text(
                          'OR LOG IN WITH EMAIL',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 161, 164, 178)),
                        ),
                        const SizedBox(
                          height: 28,
                        ),
                        const CustomTextBox(text: 'Email address'),
                        const SizedBox(
                          height: 20,
                        ),
                        const CustomTextBox(text: 'Password'),
                        const SizedBox(
                          height: 22,
                        ),

                        // SizedBox(
                        //   height: 60,
                        //   width: double.infinity,
                        //   child: OutlinedButton(
                        //     style: OutlinedButton.styleFrom(
                        //       side: BorderSide.none,
                        //       backgroundColor: const Color.fromARGB(255, 142, 151, 253),
                        //     ),
                        //     onPressed: () {},
                        //     child: Text(
                        //       textAlign: TextAlign.center,
                        //       'SIGN UP',
                        //       style: TextStyle(R
                        //         color: Colors.white,
                        //         fontSize: 14,
                        //       ),
                        //     ),
                        //   ),
                        // ),
                        CommanButton(
                          borderSide: BorderSide.none,
                          textColor: const Color.fromARGB(255, 246, 241, 251),
                          svgImage: 'assets/login.svg',
                          padding: EdgeInsets.only(left: 50),
                          text: 'LOG IN',
                          onClick: () {},
                          fontSize: 14,
                          height: 60,
                          color: const Color.fromARGB(255, 142, 151, 253),
                          width: double.infinity,
                        ),
                        const SizedBox(
                          height: 22,
                        ),
                        Text(
                          'Forgot Password?',
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.10),
                        RichText(
                          text: const TextSpan(
                            text: 'ALREADY HAVE AN ACCOUNT?',
                            style: TextStyle(fontSize: 14, color: Colors.black),
                            children: <TextSpan>[
                              TextSpan(
                                text: ' SIGN UP',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 142, 151, 253),
                                ),
                              ),
                            ],
                          ),
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
