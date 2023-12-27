import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utls/colors.dart';
import '../../../../../core/utls/styles.dart';

class DonationFieldItem extends StatelessWidget {
  const DonationFieldItem(
      {super.key, required this.imageSrc, required this.title});
  final String imageSrc;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 55.w,
          height: 55.h,
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            shadows: const [
              BoxShadow(
                color: Color(0x3F000000),
                blurRadius: 4,
                offset: Offset(0, 4),
                spreadRadius: 0,
              )
            ],
          ),
          child: Center(
            child: Image.asset(
              imageSrc,
              width: 50,
              height: 47,
            ),
          ),
        ),
        SizedBox(
          height: 4.h,
        ),
        Text(
          title,
          style: AppStyles.textStyle13.copyWith(color: AppColors.text1),
        ),
      ],
    );
  }
}
