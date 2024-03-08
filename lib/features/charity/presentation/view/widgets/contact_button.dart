import 'package:aoun_tu/core/utls/images.dart';
import 'package:aoun_tu/core/utls/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/utls/colors.dart';
import '../../../../../core/utls/styles.dart';
import '../../../../../core/utls/text.dart';

class ContactButton extends StatelessWidget {
  const ContactButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet<void>(
          context: context,
          builder: (BuildContext context) {
            return SizedBox(
              height: 469.h,
              child: Column(
                children: [
                  verticalSpace(27),
                  Text(
                    AppText.socialMedia,
                    style: AppStyles.font12BlueBold.copyWith(fontSize: 14),
                  ),
                  verticalSpace(16),
                  const Divider(),
                  verticalSpace(39),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              overflow: TextOverflow.ellipsis,
                              AppText.charityAddress,
                              style: AppStyles.font16GreyWeight400
                                  .copyWith(fontSize: 15),
                            ),
                            horizontalSpace(12),
                            SvgPicture.asset(
                              AppImages.locationIcon,
                              width: 24.w,
                              height: 24.h,
                            ),
                          ],
                        ),
                        verticalSpace(24),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              overflow: TextOverflow.ellipsis,
                              "https://www.facebook.com/MisrElKheir.",
                              style: AppStyles.font13LightBlueWeight500
                                  .copyWith(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400),
                            ),
                            horizontalSpace(12),
                            SvgPicture.asset(
                              AppImages.facebookIcon,
                              width: 24.w,
                              height: 24.h,
                            ),
                          ],
                        ),
                        verticalSpace(24),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              overflow: TextOverflow.ellipsis,
                              "https://www.instagram.com/misrelkheirorg?i",
                              style: AppStyles.font13LightBlueWeight500
                                  .copyWith(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400),
                            ),
                            horizontalSpace(12),
                            SvgPicture.asset(
                              AppImages.instagramIcon,
                              width: 24.w,
                              height: 24.h,
                            ),
                          ],
                        ),
                        verticalSpace(24),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              overflow: TextOverflow.ellipsis,
                              "01201354511",
                              style: AppStyles.font16GreyWeight400,
                            ),
                            horizontalSpace(12),
                            SvgPicture.asset(
                              AppImages.whatsApp,
                              width: 24.w,
                              height: 24.h,
                            ),
                          ],
                        ),
                        verticalSpace(24),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              overflow: TextOverflow.ellipsis,
                              "16140",
                              style: AppStyles.font16BlueBold,
                            ),
                            horizontalSpace(12),
                            SvgPicture.asset(
                              AppImages.phoneOfficeIcon,
                              width: 24.w,
                              height: 24.h,
                            ),
                          ],
                        ),
                        verticalSpace(24),
                      ],
                    ),
                  )
                ],
              ),
            );
          },
        );
      },
      child: Container(
        width: 94.w,
        height: 34.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: AppColors.mainColor,
        ),
        child: Center(
          child: Text(
            AppText.forContact,
            style: AppStyles.textStyle15.copyWith(
                color: Colors.white.withOpacity(0.87),
                fontWeight: FontWeight.w700),
          ),
        ),
      ),
    );
  }
}
