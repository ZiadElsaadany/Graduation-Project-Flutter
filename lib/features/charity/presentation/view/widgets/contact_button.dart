import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utls/colors.dart';
import '../../../../../core/utls/styles.dart';
import '../../../../../core/utls/text.dart';

class ContactButton extends StatelessWidget {
  const ContactButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 94.w,
        height: 34.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: AppColors.mainColor,
        ),
        child: Center(
          child: Text(
            AppText.forContact,
            style: AppStyles.textStyle15.copyWith(
                color: Colors.white.withOpacity(0.87),
                fontWeight: FontWeight.w700),
          ),
        ),
      ),
    );
  }
}
