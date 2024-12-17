import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meditaion_app/screens/signup_screen.dart';
import 'package:page_transition/page_transition.dart';

import '../Buttons/comman_button.dart';
import 'login_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
        children: [
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Image.asset(
                'assets/bg_frame.png',
                fit: BoxFit.cover,
                width: double.infinity,
              ),
              Positioned(
                top: height * 0.12,
                child: SvgPicture.asset(
                  'assets/relax_lady.svg',
                  fit: BoxFit.cover,
                ),
              ),
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
                      fit: BoxFit.cover,
                    ),
                    const Text('  M o o n',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Text(
                  'We are what we do',
                  style: TextStyle(
                      fontSize: height * 0.04, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Text(
                  'Thousand of people are using silent moon',
                  style: TextStyle(fontSize: height * 0.02),
                ),
                Text(
                  'for smalls meditation ',
                  style: TextStyle(fontSize: height * 0.02),

                  textAlign: TextAlign.center,
                ),
                SizedBox(height: height * 0.02),
                CommanButton(
                  fontColor: Colors.white,
                  color: const Color.fromARGB(255, 142, 151, 253),
                  text: 'LOG IN',
                  onClick: () {
                    Navigator.push(
                        context,
                        PageTransition(
                            type: PageTransitionType.rightToLeft,
                            child: LoginScreen()));
                  },
                ),
              ],
            ),
          ),
          Spacer(),
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
          ),
          SizedBox(height: height * 0.02),
        ],
      ),
    );
  }
}
