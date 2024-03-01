import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utls/colors.dart';
import '../../../../../core/utls/images.dart';
import '../../../../../core/utls/routers.dart';
import '../../../../../core/utls/styles.dart';
import '../../../../../core/utls/text.dart';
import '../../../../home/presentation/view/widgets/app_button.dart';

class CurrentCampiagnItemInCharity extends StatelessWidget {
  const CurrentCampiagnItemInCharity({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.asset(
            AppImages.waterCampaign,
            width: 327.w,
            height: 107.h,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(
          height: 6.h,
        ),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 17, horizontal: 12),
          width: 327.w,
          height: 233.h,
          clipBehavior: Clip.antiAlias,
          decoration: ShapeDecoration(
            color: const Color(0xFFF3F3F3),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            shadows: const [
              BoxShadow(
                color: Color(0x3F000000),
                blurRadius: 2,
                offset: Offset(0, 2),
                spreadRadius: 0,
              )
            ],
          ),
          child: Column(
            children: [
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      AppImages.misrElkherLogo,
                      width: 30,
                      height: 30,
                    ),
                  ),
                  const SizedBox(
                    width: 6,
                  ),
                  Text(
                    AppText.misrElkherCharity,
                    style: AppStyles.textStyle13.copyWith(
                        color: AppColors.mainColor,
                        fontWeight: FontWeight.w700),
                  )
                ],
              ),
              const SizedBox(
                height: 13,
              ),
              Text(
                AppText.definitionCampaign,
                style: AppStyles.textStyle12.copyWith(
                  color: const Color(0xFF515057),
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              AppButton(
                onTap: () {
                  GoRouter.of(context)
                      .push(AppRouter.kCurrentCampiagnInCharity);
                },
                title: AppText.knowMore,
                width: 254.w,
              ),
              SizedBox(
                height: 16.h,
              ),
            ],
          ),
        )
      ],
    );
  }
}
