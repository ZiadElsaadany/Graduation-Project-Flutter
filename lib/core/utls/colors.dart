import 'package:flutter/material.dart';

abstract class AppColors {
  static const Color white = Colors.white;
  static const Color black = Colors.black;
  static const Color mainColor = Color(0xff26508E);
  static const Color text1 = Color(0xff515057);
  static const Color text2 = Color(0xff727177);
  static const Color text3 = Color(0xff6582AD);
  static Color lightBlue = const Color(0xff92A7C6).withOpacity(0.9);
  static const Color lightGrey = Color(0xffD9D9D9);
  static const Color yellow = Color(0xFFF9A825);
  static const Color grey = Color(0xFF504F4F);
  static const Color yellow2 = Color(0xffEECB15);
  static const Color darkBlue = Color(0XFF07293D);
  static const Color darkGrey = Color(0XFF3D3D3D);
  static const Color green = Color(0XFF32AA2F);

  static const Color red = Colors.red;

  static const Color c7c7c7 = Color(0xffC7C7C7);

  static OutlineInputBorder outlineInputBorder(
      {required Color borderColor, int radius = 10}) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(radius.toDouble()),
          bottomLeft: Radius.circular(radius.toDouble()),
        ),
        borderSide: BorderSide(color: borderColor, width: 1));
  }
}
