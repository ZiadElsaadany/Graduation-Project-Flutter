import 'package:aoun_tu/core/utls/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class Constants {



  static snackBar( {
    required BuildContext context ,
    required String text ,
    required Color color
} ){

    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:
    Text(text ,
    style: AppStyles.textStyle13,
    ),
      duration: const Duration(
        milliseconds: 700
      ),
      backgroundColor: color,
    ));

  }

  static OutlineInputBorder outlineInputBorder(
      {
        required Color borderColor ,
        int radius = 10
      }
      ) {
    return  OutlineInputBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(radius.r.toDouble()),
          bottomLeft: Radius.circular(radius.r.toDouble()),
          bottomRight: Radius.circular(radius.r.toDouble()),
          topRight: Radius.circular(radius.r.toDouble()),

        ),
        borderSide: BorderSide(
            color: borderColor,
            width: 1
        )

    );
  }
}