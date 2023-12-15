import 'package:aoun_tu/core/utls/styles.dart';
import 'package:flutter/material.dart';

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
}