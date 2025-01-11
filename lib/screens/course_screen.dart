import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meditaion_app/model/playlist_model.dart';
import 'package:meditaion_app/screens/navigationbar_screen.dart';
import 'package:meditaion_app/screens/second_homescreen.dart';
import 'package:page_transition/page_transition.dart';

class CourseScreen extends StatefulWidget {
  const CourseScreen({super.key});

  @override
  State<CourseScreen> createState() => _CourseScreenState();
}

class _CourseScreenState extends State<CourseScreen> {
  final List<PlayList> playListData = [
    PlayList(
        mainText: 'Focus Attention',
        secondText: '10 MIN',
        icon: Icons.play_arrow_rounded,
        bgColor: const Color.fromARGB(255, 142, 151, 253)),
    PlayList(
        mainText: 'Relax & Breathe',
        secondText: '8 MIN',
        icon: Icons.air_rounded,
        bgColor: const Color.fromARGB(255, 251, 220, 138)),
    PlayList(
        mainText: 'Mindful Walking',
        secondText: '12 MIN',
        icon: Icons.directions_walk_rounded,
        bgColor: const Color.fromARGB(255, 173, 243, 183)),
    PlayList(
        mainText: 'Deep Sleep',
        secondText: '15 MIN',
        icon: Icons.nightlight_round,
        bgColor: const Color.fromARGB(255, 153, 201, 255)),
    PlayList(
        mainText: 'Stress Relief',
        secondText: '7 MIN',
        icon: Icons.sentiment_satisfied_rounded,
        bgColor: const Color.fromARGB(255, 253, 181, 201)),
  ];

  @override
  Widget build(BuildContext context) {
    final ht = MediaQuery.of(context).size.height;
    final wt = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Container(
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 68, 67, 89),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20))),
                width: double.infinity,
                height: ht * 0.4,
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20)),
                  child: SvgPicture.asset(
                    'assets/bg_sun.svg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    buildIcon(
                      const Color.fromARGB(255, 242, 242, 242),
                      Icons.arrow_back_rounded,
                      Colors.black,
                      () => Navigator.push(
                          context,
                          PageTransition(
                              type: PageTransitionType.rightToLeft,
                              child: const SecondHomeScreen())),
                    ),
                    const Spacer(),
                    buildIcon(
                      const Color.fromARGB(152, 3, 23, 76),
                      Icons.favorite_border_outlined,
                      Colors.white,
                      () {},
                    ),
                    SizedBox(
                      width: ht * 0.01,
                    ),
                    buildIcon(
                      const Color.fromARGB(152, 3, 23, 76),
                      Icons.arrow_forward_rounded,
                      Colors.white,
                      () {
                        Navigator.push(
                            context,
                            PageTransition(
                                type: PageTransitionType.rightToLeft,
                                child: const NavigationbarScreen()));
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: ht * 0.02,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Happy Morning',
                  style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w900,
                      color: Color.fromARGB(255, 63, 65, 78)),
                ),
                SizedBox(
                  height: ht * 0.01,
                ),
                const Text(
                  'COURSE',
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 161, 164, 178)),
                ),
                SizedBox(
                  height: ht * 0.01,
                ),
                const Text(
                  'Ease the mind into a restful night’s sleep  with\nthese deep, amblent tones.',
                  style: TextStyle(
                      fontSize: 14, color: Color.fromARGB(255, 161, 164, 178)),
                ),
                SizedBox(
                  height: ht * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Icon(
                      Icons.favorite,
                      color: Color.fromARGB(255, 255, 132, 162),
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    const Text(
                      '24.234 Favorits',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color.fromARGB(255, 161, 164, 178)),
                    ),
                    SizedBox(
                      width: wt * 0.12,
                    ),
                    const Icon(
                      Icons.headphones,
                      color: Color.fromARGB(255, 127, 210, 242),
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    const Text(
                      '34.234 Lestening',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color.fromARGB(255, 161, 164, 178)),
                    ),
                  ],
                ),
                SizedBox(
                  height: ht * 0.02,
                ),
                const Text(
                  'Pick a Instructor',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w800,
                      color: Color.fromARGB(255, 63, 65, 78)),
                ),
                SizedBox(
                  height: ht * 0.01,
                ),
                Row(
                  children: [
                    const Text(
                      'MALE VOICE',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color.fromARGB(255, 142, 151, 253)),
                    ),
                    SizedBox(
                      width: wt * 0.22,
                    ),
                    const Text(
                      'FEMALE VOICE',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color.fromARGB(255, 142, 151, 253)),
                    ),
                  ],
                ),
                const Divider(),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: playListData.length,
              itemBuilder: (context, index) {
                final item = playListData[index];
                return ListTile(
                  leading: CircleAvatar(
                    backgroundColor: item.bgColor,
                    child: Icon(
                      item.icon,
                      color: Colors.white,
                    ),
                  ),
                  title: Text(
                    item.mainText,
                    style: const TextStyle(
                        color: Color.fromARGB(255, 63, 65, 78),
                        fontSize: 16,
                        fontWeight: FontWeight.w700),
                  ),
                  subtitle: Text(
                    item.secondText,
                    style: const TextStyle(
                        color: Color.fromARGB(255, 161, 164, 178),
                        fontSize: 10,
                        fontWeight: FontWeight.w700),
                  ),
                  onTap: () {},
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget buildIcon(
      Color bgColor, IconData icon, Color? iconColor, VoidCallback onClick) {
    return GestureDetector(
      onTap: onClick,
      child: CircleAvatar(
        radius: 22,
        backgroundColor: bgColor,
        child: Icon(
          icon,
          color: iconColor,
        ),
      ),
    );
  }
}

