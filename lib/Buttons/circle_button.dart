import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CircleButton extends StatelessWidget {
  const CircleButton({
    super.key,
    required this.svgImage,
    required this.color,
  });

  final String svgImage;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 26,
      backgroundColor: color,
      child: SvgPicture.asset(
        svgImage,
      ),
    );
  }
}
