import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utls/colors.dart';
import '../../../../../core/utls/images.dart';
import '../../../../../core/utls/styles.dart';
import '../../../../../core/utls/text.dart';

class SampleDonationWidget extends StatelessWidget {
  const SampleDonationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 325.w,
        height: 203.h,
        decoration: ShapeDecoration(
          color: const Color(0xFFFAFAFA),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          shadows: const [
            BoxShadow(
              color: Color(0x3F000000),
              blurRadius: 2,
              offset: Offset(0, 2),
              spreadRadius: 0,
            )
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              AppText.donationSample,
              style: AppStyles.textStyle18.copyWith(
                color: AppColors.mainColor,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(
              height: 18.h,
            ),
            Text(
              AppText.askedForDonationSample,
              style: AppStyles.textStyle13.copyWith(color: AppColors.text1),
            ),
            SizedBox(
              height: 18.h,
            ),
            Image.asset(
              AppImages.sampleDonations,
              width: 118.w,
              height: 105.h,
            ),
          ],
        ),
      ),
    );
  }
}
