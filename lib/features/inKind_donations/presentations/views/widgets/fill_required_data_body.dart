import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utls/images.dart';
import '../../../../../core/utls/routers.dart';
import '../../../../../core/utls/spacing.dart';
import '../../../../../core/utls/styles.dart';
import '../../../../../core/utls/text.dart';
import '../../../../auth/presentation/view/widgets/field.dart';
import '../../../../home/presentation/view/widgets/app_button.dart';
import 'location_button.dart';

class FillRequiredDataBody extends StatelessWidget {
  const FillRequiredDataBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Padding(
        padding: EdgeInsets.only(top: 62.h, left: 24.w, right: 24.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              AppText.fillRequiredData,
              style: AppStyles.font16GreyWeight400.copyWith(fontSize: 15),
            ),
            verticalSpace(40),
            FadeInLeft(
              duration: const Duration(seconds: 1),
              child: CustomTextFormField(
                hintText: AppText.enterPhone,
                textEditingController: TextEditingController(),
                iconImage: AppImages.phoneIcon,
                textInputType: TextInputType.phone,
              ),
            ),
            verticalSpace(24),
            FadeInRight(
              duration: const Duration(seconds: 1),
              child: CustomTextFormField(
                hintText: AppText.enterAddress,
                textEditingController: TextEditingController(),
                iconImage: AppImages.locationIcon,
                textInputType: TextInputType.phone,
              ),
            ),
            verticalSpace(13),
            const LocationButton(),
            verticalSpace(96),
            FadeIn(
              duration: const Duration(seconds: 1),
              child: AppButton(
                onTap: () {
                  GoRouter.of(context).push(AppRouter.kDonationSuccess);
                },
                title: AppText.donateNow,
                width: 263.w,
                height: 48.h,
                textStyle:
                    AppStyles.font17BlueBold.copyWith(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
