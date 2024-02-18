import 'package:aoun_tu/core/utls/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/utls/styles.dart';
import '../../../../../core/utls/text.dart';

class CharityNameAndLogo extends StatelessWidget {
  const CharityNameAndLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          AppText.misrElkherCharity,
          style: AppStyles.textStyle17.copyWith(color: Colors.white),
        ),
        const SizedBox(
          height: 18,
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(64.h),
          child: Image.asset(
            AppImages.misrElkherLogo,
            width: 92.w,
            height: 92.h,
          ),
        ),
      ],
    );
  }
}
