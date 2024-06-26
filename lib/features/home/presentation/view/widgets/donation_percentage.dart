import 'package:aoun_tu/core/utls/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utls/colors.dart';
import '../../../../../core/utls/styles.dart';
import 'app_button.dart';

class DonationPercentage extends StatelessWidget {
  const DonationPercentage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '3,450,000 / 5,000,000 ج',
                style: AppStyles.textStyle12.copyWith(
                    color: AppColors.text3, fontWeight: FontWeight.w700),
              ),
              Text(
                '% 69',
                style: AppStyles.textStyle13.copyWith(
                    color: AppColors.yellow, fontWeight: FontWeight.w700),
              ),
            ],
          ),
           SizedBox(
            height: 6.h,
          ),
          LinearProgressIndicator(
            minHeight: 7,
            borderRadius: BorderRadius.circular(15),
            value: 69 / 100,
            backgroundColor: const Color(0xFFC7C7C7),
            valueColor:
                const AlwaysStoppedAnimation<Color>(AppColors.mainColor),
          ),
           SizedBox(
            height: 13.h,
          ),
          const AppButton(
            title: AppText.donateNow,
            color: AppColors.yellow,
          ),
           SizedBox(
            height: 16.h,
          ),
        ],
      ),
    );
  }
}
