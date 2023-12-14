import 'dart:async';

import 'package:aoun_tu/core/utls/colors.dart';
import 'package:aoun_tu/core/utls/images.dart';
import 'package:aoun_tu/core/utls/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utls/routers.dart';
import '../../../../../core/utls/text.dart';
class SplashViewBody extends StatelessWidget {
  const SplashViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Timer(const Duration(seconds: 3), () {
    //   GoRouter.of(context).push(AppRouter.kFirstOnBoarding);
    // });
    return MaterialApp(
      home: Scaffold(
        backgroundColor: AppColors.mainColor,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SvgPicture.asset(AppImages.logo),
            const SizedBox(height: 4.54,),
            Center(child: Text(AppText.appName,style: AppStyles.textStyle27.copyWith(color: AppColors.white),))
          ],
        ),
      ),
    );
  }
}
