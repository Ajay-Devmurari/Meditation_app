import 'package:flutter/material.dart';

class CommanButton extends StatelessWidget {
  const CommanButton(
      {super.key,
      required this.text,
      required this.onClick,
      this.color,
      this.icon,
      this.foreGroundColor,
      this.textColor,
      required this.fontSize});
  final String text;
  final Color? color;
  final IconData? icon;
  final Color? foreGroundColor;
  final Color? textColor;
  final double fontSize;
  final VoidCallback onClick;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(18.0),
        child: SizedBox(
          height: 60,
          width: double.infinity,
          child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                side: BorderSide.none,
                backgroundColor: color,
              ),
              onPressed: onClick,
              child: Text(
                text,
                style: TextStyle(color: textColor),
              )),
        ));
  }
}
