import 'package:aoun_tu/features/inKind_donations/presentations/views/cubit/food_donation_cubit/food_donation_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/utls/colors.dart';
import '../../../../core/utls/images.dart';
import '../../../../core/utls/styles.dart';
import '../../../../core/utls/text.dart';
import 'widgets/food_donation_body.dart';

class FoodDonationView extends StatelessWidget {
  const FoodDonationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          bottom: const PreferredSize(
            preferredSize: Size.fromHeight(4.0),
            child: Divider(
              color: AppColors.mainColor,
              height: 4,
              thickness: 1,
            ),
          ),
          title: Text(
            AppText.foodDonate,
            style: AppStyles.font16BlueBold,
          ),
          centerTitle: true,
          leading: IconButton(
              onPressed: () {
                GoRouter.of(context).pop();
              },
              icon: const Icon(
                Icons.arrow_back_ios_rounded,
                color: AppColors.mainColor,
              )),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Image.asset(
                AppImages.misrElkher,
                width: 35.w,
                height: 35.h,
              ),
            ),
          ],
        ),
        body: BlocProvider(
          create: (context) => FoodDonationCubit(),
          child: const FoodDonationBody(
            title: AppText.foodDonate,
          ),
        ),
      ),
    );
  }
}