import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utls/colors.dart';
import '../../../../../core/utls/images.dart';
import '../../../../../core/utls/styles.dart';
import '../../../../../core/utls/text.dart';

class CharityItem extends StatelessWidget {
  const CharityItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          AppImages.ahlMisr,
          width: 55.w,
          height: 55.h,
        ),
        const SizedBox(
          height: 6,
        ),
        Text(
          AppText.ahlMisr,
          style: AppStyles.textStyle12.copyWith(color: AppColors.text1),
        ),
      ],
    );
  }
}
