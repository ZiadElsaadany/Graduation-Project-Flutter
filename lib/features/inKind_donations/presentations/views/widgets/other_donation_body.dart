import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utls/colors.dart';
import '../../../../../core/utls/images.dart';
import '../../../../../core/utls/routers.dart';
import '../../../../../core/utls/spacing.dart';
import '../../../../../core/utls/styles.dart';
import '../../../../../core/utls/text.dart';
import '../../../../home/presentation/view/widgets/app_button.dart';
import '../cubit/other_donation_cubit/other_donation_cubit.dart';
import 'other_donation_text_field.dart';

class OtherDonationBody extends StatefulWidget {
  const OtherDonationBody({super.key});

  @override
  State<OtherDonationBody> createState() => _OtherDonationBodyState();
}

class _OtherDonationBodyState extends State<OtherDonationBody> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Padding(
        padding: EdgeInsets.only(top: 57.h, left: 35.w, right: 35.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              AppImages.otherDonation,
              width: 124.w,
              height: 106.h,
              fit: BoxFit.fill,
            ),
            verticalSpace(34),
            OtherDonationTextField(
              hintText: AppText.enterKindOfDonation,
              onChanged: (value) {
                context.read<OtherDonationCubit>().inKindDonation = value;
                setState(() {});
              },
            ),
            verticalSpace(24),
            OtherDonationTextField(
              maxLine: 5,
              hintText: AppText.enterDetailsOfDonation,
              onChanged: (value) {
                context.read<OtherDonationCubit>().donationDetails = value;
                setState(() {});
              },
            ),
            verticalSpace(47),
            AppButton(
              onTap:
                  (context.read<OtherDonationCubit>().inKindDonation.trim() ==
                              "" ||
                          context
                                  .read<OtherDonationCubit>()
                                  .donationDetails
                                  .trim() ==
                              "")
                      ? () {}
                      : () {
                          GoRouter.of(context)
                              .push(AppRouter.kFillRequiredData, extra: {
                            'title': AppText.otherDonathions,
                          });
                        },
              title: AppText.next,
              width: double.infinity,
              height: 48.h,
              color:
                  (context.read<OtherDonationCubit>().inKindDonation.trim() ==
                              "" ||
                          context
                                  .read<OtherDonationCubit>()
                                  .donationDetails
                                  .trim() ==
                              "")
                      ? const Color(0xffDEDEDE)
                      : AppColors.mainColor,
              textStyle: AppStyles.font16WhiteBold.copyWith(fontSize: 17),
            ),
          ],
        ),
      ),
    );
  }
}
