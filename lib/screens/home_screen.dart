import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meditaion_app/Buttons/comman_button.dart';
import 'package:meditaion_app/screens/signup_screen.dart';



class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
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
                          const Text('Silent ',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold)),
                          SvgPicture.asset("assets/logo.svg" , height: 20,width: 20,),
                          const Text(' Moon',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 40,
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
            const SizedBox(
              height: 20,
            ),
            const Text(
              'We are what we do',
              style: TextStyle(fontSize: 30),
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
              text: 'SIGN UP',
              color:const Color.fromARGB(255, 142, 151, 253),
              textColor: const Color.fromARGB(255, 246, 241, 251),
              fontSize: 18,
                 onClick: (){Navigator.push(context, MaterialPageRoute(builder: (context) => SignupScreen(),));}
            ),
            const SizedBox(
              height: 20,
            ),
            RichText(
              text: const TextSpan(
                text: 'ALREADY HAVE AN ACCOUNT?',
                style: TextStyle(fontSize: 14, color: Colors.black),
                children: <TextSpan>[
                  TextSpan(
                    text: ' LOG IN',
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
    );
  }
}
