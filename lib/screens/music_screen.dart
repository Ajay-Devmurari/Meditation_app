import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MusciScreen extends StatefulWidget {
  const MusciScreen({super.key});

  @override
  State<MusciScreen> createState() => _MusciScreenState();
}

class _MusciScreenState extends State<MusciScreen> {
  bool play = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          height: double.infinity,
          width: double.infinity,
          child: SvgPicture.asset(
            'assets/music_bg4.svg',
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              buildIcon(Colors.white, Icons.arrow_back_rounded, Colors.black),
              Spacer(),
              buildIcon(Color.fromARGB(255, 196, 197, 202),
                  Icons.favorite_border_outlined, Colors.white),
              SizedBox(
                width: 20,
              ),
              buildIcon(Color.fromARGB(255, 196, 197, 202), Icons.download,
                  Colors.white),
            ],
          ),
        ),
        Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Focus Attention',
              style: TextStyle(
                  fontSize: 34,
                  color: Color.fromARGB(255, 63, 65, 78),
                  fontWeight: FontWeight.w800),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              'Calm Radiance',
              style: TextStyle(
                  fontSize: 22,
                  color: Color.fromARGB(255, 160, 163, 177),
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.skip_previous_rounded),
                  iconSize: 40,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.play_arrow_rounded),
                  iconSize: 52,
                ),
                IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.skip_next_rounded),
                    iconSize: 40),
              ],
            ),
            SizedBox(
              height: 12,
            ),
          ],
        )),
      ],
    ));
  }

  Widget buildIcon(Color bgColor, IconData icon, Color? iconColor) {
    return CircleAvatar(
      radius: 22,
      backgroundColor: bgColor,
      child: Icon(
        icon,
        color: iconColor,
      ),
    );
  }
}

/* Stack(children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(18, 48, 18, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              buildIcon(Colors.white, Icons.arrow_back_rounded, Colors.black),
              Spacer(),
              buildIcon(Color.fromARGB(255, 196, 197, 202),
                  Icons.favorite_border_outlined, Colors.white),
              SizedBox(
                width: 20,
              ),
              buildIcon(Color.fromARGB(255, 196, 197, 202), Icons.download,
                  Colors.white),
            ],
          ),
        ),
        Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Focus Attention',
              style: TextStyle(
                  fontSize: 34,
                  color: Color.fromARGB(255, 63, 65, 78),
                  fontWeight: FontWeight.w800),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              'Calm Radiance',
              style: TextStyle(
                  fontSize: 22,
                  color: Color.fromARGB(255, 160, 163, 177),
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.skip_previous_rounded),
                  iconSize: 40,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.play_arrow_rounded),
                  iconSize: 52,
                ),
                IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.skip_next_rounded),
                    iconSize: 40),
              ],
            ),
            SizedBox(
              height: 12,
            ),
          ],
        )),
      ]),
    );*/
