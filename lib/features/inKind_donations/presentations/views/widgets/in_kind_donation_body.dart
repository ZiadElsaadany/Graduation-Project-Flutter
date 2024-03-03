import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utls/images.dart';
import '../../../../../core/utls/routers.dart';
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
              FadeInLeft(
                duration: const Duration(seconds: 1),
                child: InKindDonationItem(
                  image: AppImages.food,
                  name: AppText.foodDonate,
                  onTap: () {
                    GoRouter.of(context).push(AppRouter.kFoodDonations);
                  },
                ),
              ),
              verticalSpace(30),
              FadeInRight(
                duration: const Duration(seconds: 1),
                child: InKindDonationItem(
                  image: AppImages.clothes2,
                  name: AppText.clothesDonation,
                  onTap: () {
                    GoRouter.of(context).push(AppRouter.kClothesDonations);
                  },
                ),
              ),
              verticalSpace(30),
              FadeInLeft(
                duration: const Duration(seconds: 1),
                child: InKindDonationItem(
                  image: AppImages.medicines,
                  name: AppText.medicines,
                  onTap: () {
                    GoRouter.of(context).push(AppRouter.kMedicinesDonations);
                  },
                ),
              ),
              verticalSpace(30),
              FadeInRight(
                duration: const Duration(seconds: 1),
                child: InKindDonationItem(
                  image: AppImages.otherDonation,
                  name: AppText.otherDonathions,
                  onTap: () {
                    GoRouter.of(context).push(AppRouter.kOtherDonations);
                  },
                ),
              ),
            ],
          )),
    );
  }
}
