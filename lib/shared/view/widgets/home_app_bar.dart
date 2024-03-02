import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/utls/colors.dart';
import '../../../core/utls/images.dart';
import '../../../core/utls/spacing.dart';
import '../../../core/utls/styles.dart';
import '../../../core/utls/text.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(top: 20.h, left: 20.w, right: 20.w, bottom: 13.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SvgPicture.asset(
                AppImages.logo,
                width: 35,
                height: 30,
                color: AppColors.mainColor,
              ),
              horizontalSpace(10),
              Text(
                AppText.appName,
                style:
                    AppStyles.font18Bold.copyWith(color: AppColors.mainColor),
              ),
            ],
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(17.5),
            child: Image.asset(
              AppImages.profileImage,
              width: 35,
              height: 35,
            ),
          ),
        ],
      ),
    );
  }
}
