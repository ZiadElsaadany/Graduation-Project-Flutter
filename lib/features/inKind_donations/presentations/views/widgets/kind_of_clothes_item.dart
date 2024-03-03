import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utls/colors.dart';
import '../../../../../core/utls/spacing.dart';
import '../../../../../core/utls/styles.dart';
import '../../../../../core/utls/text.dart';
import 'clothes_count_bar.dart';

class KindOfClothesItem extends StatelessWidget {
  const KindOfClothesItem(
      {super.key,
      required this.image,
      required this.title,
      required this.count,
      this.plus,
      this.minus});
  final String image;
  final String title;
  final int count;
  final void Function()? plus;
  final void Function()? minus;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 162.h,
      padding: EdgeInsets.only(left: 64.w, right: 64.w, top: 7, bottom: 16.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: AppColors.mainColor, width: 1),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: AppStyles.font17BlueBold,
              ),
              horizontalSpace(15),
              Image.asset(
                image,
                width: 35.w,
                height: 72.h,
              ),
            ],
          ),
          verticalSpace(10),
          ClothesCountBar(
            count: count,
            plus: plus,
            minus: minus,
          ),
          verticalSpace(4),
          Text(
            AppText.piece,
            style: AppStyles.font13LightGreyWeight400.copyWith(fontSize: 12),
          ),
        ],
      ),
    );
  }
}
