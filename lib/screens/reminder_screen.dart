import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meditaion_app/screens/selection_screen.dart';
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
  int selectedDayIndex = -1;

  @override
  Widget build(BuildContext context) {
    final ht = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'What time would you\nlike to meditate?',
              style: TextStyle(
                  color: Color.fromARGB(255, 63, 65, 78),
                  fontSize: 24,
                  fontWeight: FontWeight.w800),
            ),
            SizedBox(
              height: ht * 0.01,
            ),
            const Text(
              'Any time you can choose but We recommend first thing in th morning.',
              style: TextStyle(
                  color: Color.fromARGB(255, 63, 65, 78),
                  fontSize: 16,
                  fontWeight: FontWeight.w800),
            ),
            SizedBox(
              height: ht * 0.01,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color.fromARGB(255, 245, 245, 249),
              ),
              height: ht * 0.20,
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
              height: ht * 0.01,
            ),
            const Text(
              'What time would you\nlike to meditate?',
              style: TextStyle(
                  color: Color.fromARGB(255, 63, 65, 67),
                  fontSize: 26,
                  fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: ht * 0.01,
            ),
            const Text(
              'Everyday is best, but we recommend\npicking at least five.',
              style: TextStyle(
                  color: Color.fromARGB(255, 63, 65, 67),
                  fontSize: 18,
                  fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: ht * 0.02,
            ),
            Container(
              height: ht * 0.08,
              width: double.infinity,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: days.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedDayIndex = index;
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 8.0),
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: selectedDayIndex == index
                            ? Colors.white
                            : Colors.black,
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: selectedDayIndex == index
                              ? Colors.black
                              : Colors.transparent,
                          width: 2,
                        ),
                      ),
                      child: Center(
                        child: Text(
                          days[index],
                          style: TextStyle(
                            color: selectedDayIndex == index
                                ? Colors.black
                                : Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Spacer(),
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
            SizedBox(
              height: ht * 0.01,
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
