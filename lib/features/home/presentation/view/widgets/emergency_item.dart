import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utls/colors.dart';
import '../../../../../core/utls/images.dart';
import '../../../../../core/utls/styles.dart';
import '../../../../../core/utls/text.dart';
import 'donation_percentage.dart';

class EmergencyItem extends StatelessWidget {
  const EmergencyItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 281.w,
      height: 281.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: const [
          BoxShadow(
            color: Color(0x3F000000),
            blurRadius: 2,
            offset: Offset(0, 2),
            spreadRadius: 0,
          )
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                transform: Matrix4.translationValues(0.0, -12.0, 0.0),
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(28),
                      topRight: Radius.circular(28)),
                  child: Image.asset(
                    AppImages.emergency,
                    width: 281.w,
                    height: 147.h,
                  ),
                ),
              ),
              PositionedDirectional(
                top: 80.h,
                start: 12,
                child: Text(
                  AppText.helpPalestine,
                  style: AppStyles.textStyle15.copyWith(
                      fontWeight: FontWeight.w700, color: AppColors.white),
                ),
              )
            ],
          ),
          const DonationPercentage(),
        ],
      ),
    );
  }
}
