import 'package:flutter/material.dart';
import 'package:meditaion_app/cards/custom_card.dart';
import 'package:meditaion_app/screens/course_screen.dart';

import 'package:meditaion_app/screens/navigationbar_screen.dart';
import 'package:meditaion_app/screens/reminder_screen.dart';
import 'package:page_transition/page_transition.dart';

class SecondHomeScreen extends StatefulWidget {
  const SecondHomeScreen({super.key});

  @override
  State<SecondHomeScreen> createState() => _SecondHomeScreenState();
}

class _SecondHomeScreenState extends State<SecondHomeScreen> {
  @override
  Widget build(BuildContext context) {
    final ht = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ReminderScreen(),
            ),
          ),
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Good Morning, Tony',
              style: TextStyle(
                  fontSize: 28,
                  color: Color.fromARGB(255, 63, 65, 78),
                  fontWeight: FontWeight.bold),
            ),
            const Text(
              'We Wish you have a good day',
              style: TextStyle(
                fontSize: 20,
                color: Color.fromARGB(255, 161, 164, 178),
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: ht * 0.01),
            Container(
              height: ht * 0.24,
              child: CustomCard(
                  buttonColor: Color.fromARGB(255, 235, 234, 236),
                  bgColor: const Color.fromARGB(255, 142, 141, 253),
                  img: 'assets/heart.svg',
                  text: 'Basic',
                  secondText: 'COURSE',
                  thirdText: '3:10 MIN',
                  fourthText: 'START',
                  textColor: Color.fromARGB(255, 63, 65, 78),
                  onTap: () {
                    Navigator.push(
                        context,
                        PageTransition(
                            type: PageTransitionType.rightToLeft,
                            child: CourseScreen()));
                  }),
            ),
            SizedBox(height: ht * 0.02),
            Container(
              height: ht * 0.24,
              child: CustomCard(
                  buttonColor: Color.fromARGB(255, 63, 65, 78),
                  bgColor: const Color.fromARGB(255, 255, 201, 126),
                  img: 'assets/happy_lady.svg',
                  text: 'Relaxation',
                  secondText: 'MUSIC',
                  thirdText: '3:10 MIN',
                  fourthText: 'START',
                  textColor: Color.fromARGB(255, 254, 255, 254),
                  onTap: () {
                    Navigator.push(
                        context,
                        PageTransition(
                            type: PageTransitionType.rightToLeft,
                            child: CourseScreen()));
                  }),
            ),
            Spacer(),
            const Text(
              'Recommended for you',
              style: TextStyle(
                fontSize: 26,
                color: Color.fromARGB(255, 0, 0, 0),
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: ht * 0.02),
            singleCard(),
            SizedBox(height: ht * 0.02),
          ],
        ),
      ),
    );
  }

  Widget singleCard() {
    return Container(
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 51, 50, 66),
          image: const DecorationImage(
              image: AssetImage(
                'assets/music_bg.png',
              ),
              fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(12)),
      width: double.infinity,
      height: 90,
      child: const Stack(children: [
        Padding(
          padding: EdgeInsets.all(18.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Daily Thougth',
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 4,
              ),
              Row(
                children: [
                  Text(
                    'MADITATION',
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    '3-10 MIN',
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                        fontWeight: FontWeight.w400),
                  ),
                  // Spacer(),
                ],
              ),
            ],
          ),
        ),
        Positioned(
          right: 12,
          top: 22,
          child: Icon(
            Icons.play_circle_filled,
            size: 38,
            color: Colors.white,
          ),
        )
      ]),
    );
  }
}
