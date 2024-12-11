import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import '../Buttons/comman_button.dart';
import 'second_homescreen.dart';

class ReminderScreen extends StatefulWidget {
  const ReminderScreen({super.key});

  @override
  State<ReminderScreen> createState() => _ReminderScreenState();
}

class _ReminderScreenState extends State<ReminderScreen> {
  DateTime dateTime = DateTime(2000);

  final List<String> days = ['S', 'M', 'T', 'W', 'TH', 'F', 'S'];

  @override
  Widget build(BuildContext context) {
    final ht = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'What time would you\nlike to meditate?',
              style: TextStyle(
                  color: Color.fromARGB(255, 63, 65, 67),
                  fontSize: 28,
                  fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: ht * 0.02,
            ),
            const Text(
              'Any time you can choose but We recommend first thing in th morning.',
              style: TextStyle(
                  color: Color.fromARGB(255, 63, 65, 67),
                  fontSize: 20,
                  fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: ht * 0.02,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color.fromARGB(255, 245, 245, 249),
              ),
              height: 200,
              width: double.infinity,
              child: CupertinoDatePicker(
                onDateTimeChanged: (DateTime newTime) {
                  setState(() {
                    dateTime = newTime;
                  });
                },
                use24hFormat: false,
                mode: CupertinoDatePickerMode.time,
                initialDateTime: DateTime.now(),
              ),
            ),
            SizedBox(
              height: ht * 0.02,
            ),
            const Text(
              'What time would you\nlike to meditate?',
              style: TextStyle(
                  color: Color.fromARGB(255, 63, 65, 67),
                  fontSize: 28,
                  fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: ht * 0.02,
            ),
            const Text(
              'Everyday is best, but we recommend\npicking at least five.',
              style: TextStyle(
                  color: Color.fromARGB(255, 63, 65, 67),
                  fontSize: 20,
                  fontWeight: FontWeight.w400),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
                height: 50,
                width: double.infinity,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: days.length,
                    itemBuilder: (context, index) {
                      final Color backgroundColor;
                      final Color textColor;
                      if (index < 4 || index == 6) {
                        backgroundColor = Color.fromARGB(255, 63, 65, 78);
                      } else {
                        backgroundColor = Color.fromARGB(255, 161, 164, 178);
                      }
                      if (index < 4 || index == 6) {
                        textColor = Colors.white;
                      } else {
                        textColor = Colors.black;
                      }
                      return Row(
                        children: [
                          CircleAvatar(
                            radius: 22,
                            backgroundColor: backgroundColor,
                            child: Text(
                              days[index],
                              style: TextStyle(
                                color: textColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                        ],
                      );
                    })),
            const SizedBox(
              height: 20,
            ),
            CommanButton(
              fontColor: Colors.white,
              text: 'SAVE',
              color: const Color.fromARGB(255, 142, 151, 253),
              onClick: () {
                Navigator.push(
                    context,
                    PageTransition(
                        type: PageTransitionType.rightToLeft,
                        child: SecondHomeScreen()));
              },
            ),
            const SizedBox(
              height: 20,
            ),
            const Align(
              alignment: Alignment.center,
              child: Text(
                'NO THANKS',
                style: TextStyle(
                  color: Color.fromARGB(255, 63, 65, 78),
                  // fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
