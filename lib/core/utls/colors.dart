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
  static const Color darkBlue = Color(0xFF07293D);
  static const Color darkGrey = Color(0xFF3D3D3D);
  static const Color green = Color(0XFF32AA2F);
  static const Color grey2 = Color(0xFFF3F3F4);
  static const Color grey3 = Color(0xFFDEDEDE);
  static const Color lightGrey2 = Color(0xffB4D2FF);

  static const Color red = Color(0xffBC1E1E);

  static const Color c7c7c7 = Color(0xffC7C7C7);

  static const Color frame = Color(0xFFD3CFCF);
  static const Color greyComment = Color(0xFFF5F5F5);
  static const Color settingListTileColor = Color(0xff9E9E9E);

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
