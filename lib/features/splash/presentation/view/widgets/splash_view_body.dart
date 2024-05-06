import 'dart:async';
import 'package:aoun_tu/core/utls/colors.dart';
import 'package:aoun_tu/core/utls/images.dart';
import 'package:aoun_tu/core/utls/my_hive.dart';
import 'package:aoun_tu/features/splash/presentation/view/widgets/animated_splash_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/utls/routers.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({Key? key}) : super(key: key);

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 2),
      () {
        // check token here

        if (AppHive.onBoarding() == null) {
          GoRouter.of(context).pushReplacement(AppRouter.kFirstOnBoarding);
        } else if (AppHive.getToken() == null) {
          GoRouter.of(context).pushReplacement(AppRouter.kLogin);
        } else {
          GoRouter.of(context).pushReplacement(AppRouter.kNavBar);
        }
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: AppColors.mainColor,
        body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            return Stack(
              alignment: Alignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SvgPicture.asset(AppImages.logo),
                    SizedBox(
                      height: constraints.maxHeight * 0.02,
                    ),
                    const AnimatedTextSplash(),
                  ],
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
