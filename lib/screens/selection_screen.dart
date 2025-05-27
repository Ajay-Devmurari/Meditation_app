import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meditation/model/list_model.dart';
import 'package:meditation/screens/reminder_screen.dart';
import 'package:meditation/screens/welcome_screen.dart';

import 'package:page_transition/page_transition.dart';

class SelectionScreen extends StatefulWidget {
  const SelectionScreen({super.key});

  @override
  State<SelectionScreen> createState() => _SelectionScreenState();
}

class _SelectionScreenState extends State<SelectionScreen> {
  final List<CustomList> listData = [
    CustomList(
      bgColor: const Color.fromARGB(255, 142, 151, 253),
      text: 'Reduce\nStress',
      fontColor: const Color(0xFFFEF9F3),
      imgData: 'assets/image1.svg',
    ),
    CustomList(
      bgColor: const Color.fromARGB(255, 250, 110, 90),
      text: 'Improve\nPerformance',
      fontColor: const Color(0xFFFEF9F3),
      imgData: 'assets/image2.svg',
    ),
    CustomList(
      bgColor: const Color.fromARGB(255, 254, 177, 143),
      text: 'Increase\nHappiness',
      fontColor: const Color(0xFF3F414E),
      imgData: 'assets/image3.svg',
    ),
    CustomList(
      bgColor: const Color.fromARGB(255, 255, 207, 134),
      text: 'Reduce\nAnxiety',
      fontColor: const Color(0xFF3F414E),
      imgData: 'assets/image4.svg',
    ),
    CustomList(
      bgColor: const Color.fromARGB(255, 108, 170, 142),
      text: 'Personal\nGrowth',
      fontColor: const Color(0xFFFFECCC),
      imgData: 'assets/image5.svg',
    ),
    CustomList(
      bgColor: const Color.fromARGB(255, 78, 85, 103),
      text: 'Better\nSleep',
      fontColor: const Color(0xFFEBEAEC),
      imgData: 'assets/image6.svg',
    ),
    CustomList(
      bgColor: const Color.fromARGB(255, 217, 165, 181),
      text: 'Focus on\nGoal',
      fontColor: const Color(0xFFFFECCC),
      imgData: 'assets/image7.svg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const WelcomeScreen(),
                  ));
            },
            icon: const Icon(Icons.arrow_back_rounded)),
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: SvgPicture.asset(
              'assets/Union.svg',
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'What Brings you',
                  style: TextStyle(
                      color: Color.fromARGB(255, 63, 65, 67),
                      fontSize: 28,
                      fontWeight: FontWeight.w700),
                ),
                const Text(
                  'to Silent Moon?',
                  style: TextStyle(
                      color: Color.fromARGB(255, 63, 65, 67),
                      fontSize: 28,
                      fontWeight: FontWeight.w200),
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                const Text(
                  'Choose a topic to focus on:',
                  style: TextStyle(
                      color: Color.fromARGB(255, 161, 164, 167),
                      fontSize: 20,
                      fontWeight: FontWeight.w100),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Expanded(
                  child: MasonryGridView.builder(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8,
                    itemCount: listData.length,
                    gridDelegate:
                        const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2),
                    itemBuilder: (context, index) {
                      final item = listData[index];
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              PageTransition(
                                  type: PageTransitionType.rightToLeft,
                                  child: const ReminderScreen()));
                        },
                        child: Card(
                          elevation: 7,
                          color: item.bgColor,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10),
                                child: SvgPicture.asset(
                                  item.imgData as String,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Text(item.text as String,
                                    style: TextStyle(
                                        color: item.fontColor,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500)),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
