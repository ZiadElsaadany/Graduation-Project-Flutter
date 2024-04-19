import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utls/colors.dart';
import '../../../../../core/utls/spacing.dart';
import '../../../../../core/utls/styles.dart';

class CustomLinearProgressWithValue extends StatelessWidget {
  const CustomLinearProgressWithValue({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '5.000 م.ج',
              style: AppStyles.font14YellowBold,
            ),
            Text(
              '3.000 م.ج',
              style: AppStyles.font14LightGreyBold,
            ),
          ],
        ),
        verticalSpace(18),
        SizedBox(
          width: 280.w,
          child: LinearProgressIndicator(
            minHeight: 7,
            borderRadius: BorderRadius.circular(15),
            value: 69 / 100,
            backgroundColor: const Color(0xFFE6E6E6),
            valueColor:
            const AlwaysStoppedAnimation<Color>(AppColors.mainColor),
          ),
        ),
      ],
    );
  }
}
