import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utls/colors.dart';
import '../../../../../core/utls/styles.dart';
import '../../../../../core/utls/text.dart';

class AnimatedTextSplash extends StatelessWidget {
  const AnimatedTextSplash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: AnimatedTextKit(
      isRepeatingAnimation: false,
      animatedTexts: [
        FlickerAnimatedText(
            speed: const Duration(seconds: 2),
            AppText.appName,
            textStyle: AppStyles.textStyle27.copyWith(color: AppColors.white))
      ],
    ));
  }
}
