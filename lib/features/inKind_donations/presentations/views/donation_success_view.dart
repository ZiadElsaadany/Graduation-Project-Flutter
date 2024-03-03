import 'package:aoun_tu/core/utls/images.dart';
import 'package:aoun_tu/core/utls/spacing.dart';
import 'package:aoun_tu/core/utls/styles.dart';
import 'package:aoun_tu/core/utls/text.dart';
import 'package:aoun_tu/features/home/presentation/view/widgets/app_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DonationSuccessView extends StatelessWidget {
  const DonationSuccessView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 56.w, vertical: 164.h),
        child: Column(
          children: [
            Text(
              AppText.thankYou,
              style: AppStyles.font16GreyWeight400
                  .copyWith(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            verticalSpace(58),
            Image.asset(
              AppImages.check,
              width: 105.w,
              height: 105.h,
            ),
            verticalSpace(19),
            Text(
              AppText.donationSuccess,
              style: AppStyles.font16GreyWeight400
                  .copyWith(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            verticalSpace(25),
            Text(
              AppText.willContactYou,
              style: AppStyles.font13LightGreyWeight400.copyWith(fontSize: 15),
            ),
            verticalSpace(50),
            AppButton(
              title: AppText.backToHome,
              height: 48.h,
              textStyle: AppStyles.font16WhiteBold.copyWith(fontSize: 15),
            )
          ],
        ),
      ),
    );
  }
}
