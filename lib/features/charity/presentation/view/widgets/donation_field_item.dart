import 'package:aoun_tu/core/utls/routers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utls/colors.dart';
import '../../../../../core/utls/styles.dart';

class DonationFieldItem extends StatelessWidget {
  const DonationFieldItem(
      {super.key, required this.imageSrc, required this.title});
  final String imageSrc;
  final String title;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kDonationField,
            extra: {'title': title, 'image': imageSrc});
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 55.w,
            height: 55.h,
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                side: BorderSide(width: 1, color: AppColors.mainColor),
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: Center(
              child: Image.asset(
                imageSrc,
                width: 50,
                height: 47,
              ),
            ),
          ),
          SizedBox(
            height: 4.h,
          ),
          Text(
            title,
            style: AppStyles.font12DarkGreyWeight400,
          ),
        ],
      ),
    );
  }
}
