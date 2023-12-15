import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utls/colors.dart';
import '../../../../../core/utls/images.dart';
import '../../../../../core/utls/styles.dart';
import '../../../../../core/utls/text.dart';

class WritePostBar extends StatelessWidget {
  const WritePostBar({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding:
            EdgeInsets.only(top: 18.h, bottom: 18.h, left: 16.w, right: 16.w),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          width: double.infinity,
          height: 44,
          decoration: ShapeDecoration(
            color: AppColors.lightGrey.withOpacity(0.25),
            shape: RoundedRectangleBorder(
              side: BorderSide(
                  width: 0.70, color: AppColors.lightGrey.withOpacity(0.5)),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                AppText.writePost,
                style:
                    AppStyles.textStyle15.copyWith(color: AppColors.mainColor),
              ),
              Row(
                children: [
                  Image.asset(
                    AppImages.addPost,
                    width: 20,
                    height: 20,
                  ),
                  const SizedBox(
                    width: 6,
                  ),
                  Image.asset(
                    AppImages.photos,
                    width: 20,
                    height: 20,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
