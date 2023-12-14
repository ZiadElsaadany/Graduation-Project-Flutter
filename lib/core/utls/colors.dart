import 'package:flutter/material.dart';

abstract class AppColors {


  static const Color white = Colors.white ;
  static const Color black = Colors.black ;
  static const Color mainColor  = Color(0xff26508E);
  static const Color text1  = Color(0xff515057);
  static const Color text2  = Color(0xff727177);
  static const Color text3  = Color(0xff6582AD);

static OutlineInputBorder outlineInputBorder(
  {
  required Color borderColor ,
    int radius = 10
}
    ) {
  return  OutlineInputBorder(
    borderRadius: BorderRadius.only(
        topLeft: Radius.circular(radius.toDouble()),
        bottomLeft: Radius.circular(radius.toDouble()),

    ),
    borderSide: BorderSide(
      color: borderColor,
      width: 1
    )

  );
}
}