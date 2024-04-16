import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utls/colors.dart';
import '../../../../../core/utls/styles.dart';

class InKindDonationItem extends StatelessWidget {
  const InKindDonationItem(
      {super.key, required this.image, required this.name, this.onTap});
  final String image;
  final String name;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 36.w, vertical: 16.h),
        width: double.infinity,
        height: 120.h,
        decoration: BoxDecoration(
          color: AppColors.grey2,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 90.w,
              child: Text(
                textAlign: TextAlign.center,
                name,
                style: AppStyles.font17BlueBold,
              ),
            ),
            Image.asset(
              image,
              width: 112.w,
              height: 90.h,
              fit: BoxFit.fill,
            ),
          ],
        ),
      ),
    );
  }
}
