import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meditaion_app/Buttons/comman_button.dart';
import 'package:meditaion_app/screens/login_screen.dart';
import 'package:meditaion_app/screens/signup_screen.dart';
import 'package:page_transition/page_transition.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Image.asset(
                'assets/bg_frame.png',
              ),
              Column(
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
                    height: height * 0.12,
                  ),
                  Image.asset(
                    'assets/image_lady.png',
                    // height: 242,
                    // width: 332,
                    fit: BoxFit.cover,
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              children: [
                const Text(
                  'We are what we do',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Thousand of people are using silent moon',
                  style: TextStyle(fontSize: 16),
                ),
                const Text(
                  'for smalls meditation ',
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 20,
                ),
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
                SizedBox(height: height * 0.14),
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
    );
  }
}
