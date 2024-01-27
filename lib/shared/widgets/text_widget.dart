import 'package:flutter/material.dart';

Text TextWidget(
  String text, {
  double fontSize = 16,
  FontWeight fontWeight = FontWeight.normal,
  Color? color,
  TextAlign align = TextAlign.left,
  String fontName = 'notosan',
}) {
  color ??= Colors.black;
  return Text(
    text,
    textAlign: align,
    style: TextStyle(
      fontSize: fontSize,
      color: color,
      fontWeight: fontWeight,
      fontFamily: fontName,
    ),
  );
}
