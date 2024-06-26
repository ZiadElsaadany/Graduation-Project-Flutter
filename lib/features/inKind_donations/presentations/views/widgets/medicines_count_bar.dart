import 'package:aoun_tu/features/inKind_donations/presentations/views/cubit/medicines_donation_cubit/medicines_donation_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utls/colors.dart';
import '../../../../../core/utls/styles.dart';

class MedicinesCountBar extends StatelessWidget {
  const MedicinesCountBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MedicinesDonationCubit, MedicinesDonationState>(
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
                    context.read<MedicinesDonationCubit>().countPlus();
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
                  context.read<MedicinesDonationCubit>().count.toString(),
                  style: AppStyles.font20YellowWeight500.copyWith(
                      fontSize: 22,
                      color: context.read<MedicinesDonationCubit>().count == 0
                          ? const Color(0xff7B7B7B)
                          : AppColors.yellow),
                ),
                GestureDetector(
                  onTap: () {
                    context.read<MedicinesDonationCubit>().countMinus();
                  },
                  child: Container(
                    width: 34,
                    height: 34,
                    decoration: BoxDecoration(
                      color: context.read<MedicinesDonationCubit>().count == 0
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
