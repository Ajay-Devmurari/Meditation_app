import 'dart:ui';

import 'package:flutter/cupertino.dart';

class MaditateList {
  final String text;
  final String imgData;
  final Color bgColor;
  final Color? iconColor;

  MaditateList(
      {required this.text,
      required this.imgData,
      required this.bgColor,
      this.iconColor});
}
