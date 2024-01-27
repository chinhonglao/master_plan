import 'package:flutter/material.dart';

class AppColor {
  static const Color blue2C45E8 = Color(0xFF2C45E8);
  static const Color greyE2E1E4 = Color(0xFFE2E1E4);
  static const Color black171719 = Color(0xFF171719);
  static const Color grey313136 = Color(0xFF313136);
  static Color dataRowColor(int index) => index.isEven
      ? Colors.lightBlue.withOpacity(.2)
      : Colors.lightGreen[200]!.withOpacity(.2);
}
