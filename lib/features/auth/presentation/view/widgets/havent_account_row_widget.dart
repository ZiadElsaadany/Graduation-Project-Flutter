import 'package:aoun_tu/core/utls/colors.dart';
import 'package:aoun_tu/core/utls/styles.dart';
import 'package:aoun_tu/core/utls/text.dart';
import 'package:flutter/material.dart';

class HaventAccountRowWidget extends StatelessWidget {
  const HaventAccountRowWidget({Key? key, required this.underLineText, required this.text}) : super(key: key);

  final String underLineText;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
      RichText(
      textDirection: TextDirection.rtl,
      text:  TextSpan(
          text: "$text ",
          style: AppStyles.textStyle11.copyWith(
            color: AppColors.mainColor ,
              fontSize: 12,

              fontWeight: FontWeight.w400
          ),
          children: [

            TextSpan(
              text: underLineText,
              style: AppStyles.textStyle11.copyWith(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                decoration: TextDecoration.underline
              ),

            ),

          ]
      ),

    ),
        const SizedBox(
          height: 16,
        ),
        Text(AppText.or,
        style: AppStyles.textStyle14,
        ) ,
        const SizedBox(
          height: 16,
        ),

        Text(AppText.enterAsAGuest,
          style: AppStyles.textStyle13.copyWith(
            color: AppColors.mainColor
          ),
        ) ,
      ],
    );
  }
}
