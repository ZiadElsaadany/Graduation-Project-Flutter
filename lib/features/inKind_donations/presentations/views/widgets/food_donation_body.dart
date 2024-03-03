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
import '../cubit/food_donation_cubit/food_donation_cubit.dart';
import 'food_count_bar.dart';

class FoodDonationBody extends StatelessWidget {
  const FoodDonationBody({super.key, required this.title});
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
              AppImages.food,
              width: 150.w,
              height: 150.h,
            ),
          ),
          verticalSpace(30),
          Text(
            AppText.selectMealCount,
            style: AppStyles.font16GreyWeight400,
          ),
          verticalSpace(40),
          const FoodCountBar(),
          verticalSpace(8),
          Text(
            AppText.meal,
            style: AppStyles.font13LightGreyWeight400.copyWith(fontSize: 14),
          ),
          verticalSpace(75),
          BlocBuilder<FoodDonationCubit, FoodDonationState>(
            builder: (context, state) {
              return AppButton(
                title: AppText.next,
                onTap: context.read<FoodDonationCubit>().count == 0
                    ? () {}
                    : () {
                        GoRouter.of(context)
                            .push(AppRouter.kFillRequiredData, extra: {
                          'title': title,
                        });
                      },
                width: double.infinity,
                height: 48.h,
                color: context.read<FoodDonationCubit>().count == 0
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
