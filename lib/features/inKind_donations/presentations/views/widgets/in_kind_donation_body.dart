import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utls/images.dart';
import '../../../../../core/utls/spacing.dart';
import '../../../../../core/utls/text.dart';
import 'in_kind_donation_item.dart';

class InKindDonationsBody extends StatelessWidget {
  const InKindDonationsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 50.h),
          child: Column(
            children: [
              InKindDonationItem(
                image: AppImages.food,
                name: AppText.foodDonate,
                onTap: () {},
              ),
              verticalSpace(30),
              InKindDonationItem(
                image: AppImages.clothes2,
                name: AppText.clothesDonation,
                onTap: () {},
              ),
              verticalSpace(30),
              InKindDonationItem(
                image: AppImages.medicines,
                name: AppText.medicines,
                onTap: () {},
              ),
              verticalSpace(30),
              InKindDonationItem(
                image: AppImages.otherDonation,
                name: AppText.otherDonathions,
                onTap: () {},
              ),
            ],
          )),
    );
  }
}