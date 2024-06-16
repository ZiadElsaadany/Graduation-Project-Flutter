import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utls/colors.dart';
import '../../../../../core/utls/styles.dart';
import '../../../../../core/utls/text.dart';

class SaveChangesButton extends StatelessWidget {
  const SaveChangesButton({super.key, this.onTap});
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 140.h,
      padding: EdgeInsets.only(
        top: 50.h,
        left: 24.w,
        right: 24.w,
        bottom: 40.h,
      ),
      decoration: const BoxDecoration(
          color: Color(0x0C26508E),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          )),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: AppColors.mainColor,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Center(
              child: Text(
            AppText.saveChanges,
            style: AppStyles.font16WhiteBold.copyWith(fontSize: 14.sp),
          )),
        ),
      ),
    );
  }
}
