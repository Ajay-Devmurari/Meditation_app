import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTextBox extends StatelessWidget {
  const CustomTextBox({super.key , required this.text
  });

  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 62,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Color.fromARGB(255, 242, 243, 247),
        ),
        width: double.infinity,
        child:  Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          child: Align(alignment: Alignment.centerLeft,
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 16,
                color: Color.fromARGB(255, 161, 164, 178),
              ),
            ),
          ),
        ));
  }
}
