import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meditaion_app/screens/second_homescreen.dart';
import 'package:page_transition/page_transition.dart';

class SelectionScreen extends StatefulWidget {
  const SelectionScreen({super.key});

  @override
  State<SelectionScreen> createState() => _SelectionScreenState();
}

class _SelectionScreenState extends State<SelectionScreen> {
  List<Color> colorList = [
    const Color.fromARGB(255, 142, 151, 253),
    const Color.fromARGB(255, 250, 110, 90),
    const Color.fromARGB(255, 254, 177, 143),
    const Color.fromARGB(255, 255, 207, 134),
    const Color.fromARGB(255, 108, 170, 142),
    const Color.fromARGB(255, 78, 85, 103),
    const Color.fromARGB(255, 217, 165, 181),
  ];
  final List<String> imageList = [
    'assets/image1.svg',
    'assets/image2.svg',
    'assets/image3.svg',
    'assets/image4.svg',
    'assets/image5.svg',
    'assets/image6.svg',
    'assets/image7.svg',
  ];
  List<String> textList = [
    'Reduce\nStress',
    'Improve\nPerformance',
    'Increase\nHappiness',
    'Reduce\nAnxiety',
    'Personal\nGrowth',
    'Better\nSleep',
    'Focus on\nGoal',
  ];
  List<Color> fontColorList = [
    const Color(0xFFFEF9F3),
    const Color(0xFFFEF9F3),
    const Color(0xFF3F414E),
    const Color(0xFF3F414E),
    const Color(0xFFFFECCC),
    const Color(0xFFEBEAEC),
    const Color(0xFFFFECCC),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Stack(
        children: [
          SvgPicture.asset(
            'assets/Union.svg',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
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
                const Text(
                  'Choose a topic to focus on:',
                  style: TextStyle(
                      color: Color.fromARGB(255, 161, 164, 167),
                      fontSize: 20,
                      fontWeight: FontWeight.w100),
                ),
                const SizedBox(
                  height: 20,
                ),
                Expanded(
                  child: MasonryGridView.builder(
                    shrinkWrap: true,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8,
                    itemCount: colorList.length,
                    gridDelegate:
                        const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2),
                    itemBuilder: (context, index) {
                      return GestureDetector(onTap: (){
                        Navigator.push(
                            context,
                            PageTransition(
                                type: PageTransitionType.rightToLeft,
                                child: SecondHomeScreen()));
                      },
                        child: Card(
                          elevation: 7,
                          color: colorList[index % colorList.length],
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10),
                                child: SvgPicture.asset(
                                  imageList[index],
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Text(textList[index],
                                    style: TextStyle(
                                        color: fontColorList[
                                            index % fontColorList.length],
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
