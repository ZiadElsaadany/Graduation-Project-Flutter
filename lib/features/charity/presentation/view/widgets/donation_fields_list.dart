import 'package:aoun_tu/core/utls/colors.dart';
import 'package:aoun_tu/core/utls/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utls/styles.dart';
import '../../../../../core/utls/text.dart';
import 'donation_field_item.dart';

class DonationFieldsList extends StatelessWidget {
  const DonationFieldsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsetsDirectional.only(start: 18),
          child: Text(
            AppText.donationFields,
            style: AppStyles.textStyle16.copyWith(
                color: AppColors.mainColor, fontWeight: FontWeight.w700),
          ),
        ),
        SizedBox(
          height: 18.h,
        ),
        SizedBox(
          height: 91.h,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: donationFieldsTitles.length,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsetsDirectional.only(start: 18),
                  child: DonationFieldItem(
                    title: donationFieldsTitles[index],
                    imageSrc: donationFieldsImages[index],
                  ),
                );
              }),
        ),
      ],
    );
  }
}

List<String> donationFieldsTitles = [
  AppText.education,
  AppText.housing,
  "أسر متعففه",
  AppText.clothes,
  AppText.feeding,
  AppText.alms,
  AppText.education,
  AppText.housing,
  AppText.clothes,
  AppText.feeding,
  AppText.alms
];

List<String> donationFieldsImages = [
  AppImages.education,
  AppImages.housing,
  AppImages.family,
  AppImages.clothes,
  AppImages.feeding,
  AppImages.alms,
  AppImages.education,
  AppImages.housing,
  AppImages.clothes,
  AppImages.feeding,
  AppImages.alms
];
