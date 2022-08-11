import 'package:flutter/material.dart';

class AppColors {
  static const heading = Color(0xff9148fc);
  static const heading1 = Color(0xff3b3b3b);
  static const white = Color(0xfff8f8f8);
  static const backgroundcolor = Color.fromARGB(255, 226, 231, 238);
}

TextStyle headline(double fontSize) {
  return TextStyle(
      color: AppColors.heading,
      fontSize: fontSize,
      fontWeight: FontWeight.w600,
      fontFamily: 'Roboto-Bold');
}

TextStyle headline1(double fontSize) {
  return TextStyle(
      color: AppColors.heading1,
      fontSize: fontSize,
      fontWeight: FontWeight.w600,
      fontFamily: 'Roboto');
}
