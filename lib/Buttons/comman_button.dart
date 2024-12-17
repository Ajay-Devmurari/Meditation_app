import 'package:flutter/material.dart';

class CommanButton extends StatelessWidget {
  const CommanButton(
      {super.key,
      required this.text,
      required this.onClick,
      this.color,
      this.fontColor});

  final String text;
  final Color? color;
  final Color? fontColor;
  final VoidCallback onClick;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 52,
      width: double.infinity,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          side: BorderSide.none,
          backgroundColor: color,
        ),
        onPressed: onClick,
        child: Text(
          text,
          style: TextStyle(
            fontSize: 14,
            color: fontColor,
          ),
        ),
      ),
    );
  }
}
