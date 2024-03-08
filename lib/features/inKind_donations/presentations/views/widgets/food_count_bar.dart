import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utls/colors.dart';
import '../../../../../core/utls/styles.dart';
import '../cubit/food_donation_cubit/food_donation_cubit.dart';

class FoodCountBar extends StatelessWidget {
  const FoodCountBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FoodDonationCubit, FoodDonationState>(
      builder: (context, state) {
        return Container(
            width: 192.w,
            height: 34.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              gradient: const LinearGradient(
                colors: [Colors.white, AppColors.lightGrey2],
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    context.read<FoodDonationCubit>().countPlus();
                  },
                  child: Container(
                    width: 34,
                    height: 34,
                    decoration: BoxDecoration(
                      color: AppColors.mainColor,
                      borderRadius: BorderRadius.circular(17),
                    ),
                    child: const Icon(
                      Icons.add_rounded,
                      color: Colors.white,
                    ),
                  ),
                ),
                Text(
                  context.read<FoodDonationCubit>().count.toString(),
                  style: AppStyles.font20YellowWeight500.copyWith(
                      fontSize: 22,
                      color: context.read<FoodDonationCubit>().count == 0
                          ? const Color(0xff7B7B7B)
                          : AppColors.yellow),
                ),
                GestureDetector(
                  onTap: () {
                    context.read<FoodDonationCubit>().countMinus();
                  },
                  child: Container(
                    width: 34,
                    height: 34,
                    decoration: BoxDecoration(
                      color: context.read<FoodDonationCubit>().count == 0
                          ? const Color(0xff7B7B7B).withOpacity(.25)
                          : AppColors.mainColor,
                      borderRadius: BorderRadius.circular(17),
                    ),
                    child: const Icon(
                      Icons.remove_rounded,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ));
      },
    );
  }
}
