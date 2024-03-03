import 'package:aoun_tu/features/inKind_donations/presentations/views/cubit/medicines_donation_cubit/medicines_donation_cubit.dart';
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
import 'medicines_count_bar.dart';

class MedicinesDonationBody extends StatelessWidget {
  const MedicinesDonationBody({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 83.h,
        left: 56.w,
        right: 56.w,
        bottom: 40.h,
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(75),
            child: Image.asset(
              AppImages.medicines,
              width: 150.w,
              height: 150.h,
            ),
          ),
          verticalSpace(30),
          Text(
            AppText.selectPackageCount,
            style: AppStyles.font16GreyWeight400,
          ),
          verticalSpace(40),
          const MedicinesCountBar(),
          verticalSpace(8),
          Text(
            AppText.package,
            style: AppStyles.font13LightGreyWeight400.copyWith(fontSize: 14),
          ),
          verticalSpace(75),
          BlocBuilder<MedicinesDonationCubit, MedicinesDonationState>(
            builder: (context, state) {
              return AppButton(
                title: AppText.next,
                onTap: context.read<MedicinesDonationCubit>().count == 0
                    ? () {}
                    : () {
                        GoRouter.of(context)
                            .push(AppRouter.kFillRequiredData, extra: {
                          'title': title,
                        });
                      },
                width: double.infinity,
                height: 48.h,
                color: context.read<MedicinesDonationCubit>().count == 0
                    ? const Color(0xffDEDEDE)
                    : AppColors.mainColor,
                textStyle: AppStyles.font16WhiteBold.copyWith(fontSize: 17),
              );
            },
          ),
        ],
      ),
    );
  }
}
