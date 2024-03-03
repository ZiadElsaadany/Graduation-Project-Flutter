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
import '../cubit/clothes_donation_cubit/clothes_donation_cubit.dart';
import 'kind_of_clothes_item.dart';

class ClothesDonationBody extends StatelessWidget {
  const ClothesDonationBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: BlocBuilder<ClothesDonationCubit, ClothesDonationState>(
        builder: (context, state) {
          return Padding(
            padding: EdgeInsets.only(
                top: 24.h, left: 56.w, right: 56.h, bottom: 40.h),
            child: Column(
              children: [
                KindOfClothesItem(
                  image: AppImages.boy,
                  title: AppText.children,
                  count: context.read<ClothesDonationCubit>().childrenCount,
                  plus: () {
                    context.read<ClothesDonationCubit>().childrenCountPlus();
                  },
                  minus: () {
                    context.read<ClothesDonationCubit>().childrenCountMinus();
                  },
                ),
                verticalSpace(20),
                KindOfClothesItem(
                  image: AppImages.man,
                  title: AppText.men,
                  count: context.read<ClothesDonationCubit>().menCount,
                  plus: () {
                    context.read<ClothesDonationCubit>().menCountPlus();
                  },
                  minus: () {
                    context.read<ClothesDonationCubit>().menCountMinus();
                  },
                ),
                verticalSpace(20),
                KindOfClothesItem(
                  image: AppImages.woman,
                  title: AppText.women,
                  count: context.read<ClothesDonationCubit>().womenCount,
                  plus: () {
                    context.read<ClothesDonationCubit>().womenCountPlus();
                  },
                  minus: () {
                    context.read<ClothesDonationCubit>().womenCountMinus();
                  },
                ),
                verticalSpace(27),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "${AppText.allNumber} :  ",
                      style: AppStyles.font16BlueBold
                          .copyWith(fontWeight: FontWeight.w400),
                    ),
                    Text(
                      context
                          .read<ClothesDonationCubit>()
                          .getAllCount()
                          .toString(),
                      style: AppStyles.font20YellowWeight500.copyWith(
                          fontWeight: FontWeight.w400,
                          color: context
                                      .read<ClothesDonationCubit>()
                                      .getAllCount() ==
                                  0
                              ? const Color(0xff7B7B7B)
                              : AppColors.yellow),
                    ),
                  ],
                ),
                verticalSpace(20),
                AppButton(
                    title: AppText.next,
                    height: 48,
                    onTap:
                        context.read<ClothesDonationCubit>().getAllCount() == 0
                            ? () {}
                            : () {
                                GoRouter.of(context)
                                    .push(AppRouter.kFillRequiredData, extra: {
                                  'title': AppText.clothesDonation,
                                });
                              },
                    color:
                        context.read<ClothesDonationCubit>().getAllCount() == 0
                            ? const Color(0xffDEDEDE)
                            : AppColors.mainColor),
              ],
            ),
          );
        },
      ),
    );
  }
}
