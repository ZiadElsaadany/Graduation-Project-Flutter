import 'package:animate_do/animate_do.dart';
import 'package:aoun_tu/core/utls/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AuthLogoWidget extends StatelessWidget {
  const AuthLogoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FadeInDown(
      duration: const Duration(
        milliseconds: 800
      ),
      child: Image.asset(AppImages.blueLogo,
      height: 51.h,
        width: 63.w,
      ),
    );
  }
}
