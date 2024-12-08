import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CommanButton extends StatelessWidget {
  const CommanButton({
    super.key,
    required this.text,
    required this.onClick,
    this.color,
    this.svgImage,
    this.textColor,
    this.borderSide,
    this.padding,
    required this.fontSize,
    this.height,
    this.width,
  });

  final String text;
  final Color? color;
  final double? height;
  final double? width;
  final String? svgImage;
  final Color? textColor;
  final double fontSize;
  final BorderSide? borderSide;
  final EdgeInsets? padding;
  final VoidCallback onClick;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          side: borderSide ?? BorderSide.none,
          backgroundColor: color,
        ),
        onPressed: onClick,
        child: Padding(
          padding: const EdgeInsets.only(left: 40),
          child: Row(
            children: [
              Padding(
                padding: padding ?? EdgeInsets.zero,
                child: SvgPicture.asset(
                  svgImage!,
                  height: 20,
                  width: 20,
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                // textAlign: TextAlign.center,
                text,
                style: TextStyle(
                  color: textColor,
                  fontSize: fontSize,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
// if (svgImage != null)
//   Padding(
//     padding: const EdgeInsets.only(),
//     child: SvgPicture.asset(
//       svgImage!,
//       height: 20,
//       width: 20,
//     ),
//   ),
