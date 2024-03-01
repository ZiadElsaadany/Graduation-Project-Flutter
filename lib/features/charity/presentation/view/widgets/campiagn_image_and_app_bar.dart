import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utls/colors.dart';
import '../../../../../core/utls/images.dart';

class CampiagnImageAndAppBar extends StatelessWidget {
  const CampiagnImageAndAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          AppImages.waterCampaign,
          width: double.infinity,
          height: 271.h,
          fit: BoxFit.fill,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 32.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  onPressed: () {
                    GoRouter.of(context).pop();
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios_rounded,
                    color: AppColors.mainColor,
                  )),
              Image.asset(
                AppImages.misrElkher,
                width: 35.w,
                height: 35.h,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
