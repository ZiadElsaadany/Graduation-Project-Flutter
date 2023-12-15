import 'package:animate_do/animate_do.dart';
import 'package:aoun_tu/core/utls/colors.dart';
import 'package:aoun_tu/core/utls/styles.dart';
import 'package:aoun_tu/core/utls/text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WelcomeToWidget extends StatelessWidget {
  const WelcomeToWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var textStyle = AppStyles.textStyle16.copyWith(
fontSize: 17,

      color: AppColors.text1,
      fontWeight: FontWeight.bold
    ); var appStyle = AppStyles.textStyle19.copyWith(
      color: AppColors.mainColor,
      fontWeight: FontWeight.bold
    );
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        FadeInDown(

          child: RichText(
            textDirection: TextDirection.rtl,
            text:  TextSpan(
            text: "${AppText.welcomeTo} ",
            style: textStyle,
            children: [
              // DefaultTextStyle(
              //   style:Theme.of(context).textTheme.bodySmall!.copyWith(
              //       fontSize: 16.sp ,
              //       fontWeight: FontWeight.w700,
              //       color: MyColors.white
              //   ),
              //   child: AnimatedTextKit(
              //     isRepeatingAnimation: false,
              //     animatedTexts: [
              //       TypewriterAnimatedText(MyText.welcomeAsk)
              //     ],
              //
              //   ),
              // ),
              TextSpan(
                text: AppText.appName,
                style: appStyle,

              ),   TextSpan(
                text: " .. ",
                style: textStyle,

              ),

            ]
          ),

          ),
        ),
        const SizedBox(height: 7,),
        Text(
        AppText.enterToLogin,
          style: textStyle,
        )
      ],
    );
  }
}
