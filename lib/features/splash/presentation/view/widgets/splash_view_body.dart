import 'dart:async';
import 'package:aoun_tu/core/utls/colors.dart';
import 'package:aoun_tu/core/utls/images.dart';
import 'package:aoun_tu/features/splash/presentation/view/widgets/animated_splash_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/utls/routers.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 3), () {
      GoRouter.of(context).push(AppRouter.kFirstOnBoarding);
    });
    return MaterialApp(
      home: Scaffold(
        backgroundColor: AppColors.mainColor,
        body: Stack(
          children: [
            Positioned(
              top: MediaQuery.of(context).size.height * 0.4,
              left: MediaQuery.of(context).size.width * 0.4,
              child: SvgPicture.asset(AppImages.logo),
            ),
            const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  height: 4.54,
                ),
                AnimatedTextSplash(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
