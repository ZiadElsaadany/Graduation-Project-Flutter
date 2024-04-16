import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utls/colors.dart';
import '../../../../../core/utls/styles.dart';
import '../../../../../core/utls/text.dart';
import 'contact_button.dart';
import 'custom_rating_bar.dart';

class CharityInfo extends StatelessWidget {
  const CharityInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(
          start: 18.w, end: 23.w, top: 22.h, bottom: 26.h),
      child: Column(
        children: [
          Text(
            AppText.misrElkherDefination,
            style: AppStyles.textStyle15.copyWith(color: AppColors.text1),
          ),
          SizedBox(
            height: 20.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const ContactButton(),
              Row(
                children: [
                  Text(
                    '(Review) 4.5 ',
                    style: AppStyles.textStyle16
                        .copyWith(fontWeight: FontWeight.w500),
                  ),
                  const CustomRatingBar(
                    rating: 4.5,
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            height: 34.h,
          ),
          Divider(
            thickness: 0.5,
            color: AppColors.mainColor.withOpacity(0.5),
            endIndent: 40.w,
            indent: 47.w,
          )
        ],
      ),
    );
  }
}
