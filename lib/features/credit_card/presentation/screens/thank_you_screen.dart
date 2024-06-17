import 'package:aoun_tu/core/utls/colors.dart';
import 'package:aoun_tu/core/utls/images.dart';
import 'package:aoun_tu/core/utls/styles.dart';
import 'package:aoun_tu/core/utls/text.dart';
import 'package:aoun_tu/features/home/presentation/view/widgets/app_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/utls/routers.dart';

class ThankYouScreen extends StatelessWidget {
  const ThankYouScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: size.width*0.15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: size.height * 0.25,
            ),
            Text(
              AppText.thankU,
              style:
                  AppStyles.textStyle24extraBold.copyWith(color: AppColors.text1),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: size.height * 0.045,
            ),
            Image.asset(
              AppImages.thankYou,
              height: size.height * 0.105,
              width: size.width * 0.105,
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            Text(
              AppText.donationSuccess,
              style: AppStyles.font18Bold.copyWith(color: AppColors.text1),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            Text(
              AppText.weWillSendMessageToTheRecipient,
              style: AppStyles.textStyle15.copyWith(color: AppColors.text2),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: size.height * 0.045,
            ),
             AppButton(title: AppText.backToHome,
              height: size.height*0.06,
               onTap:() =>
                 GoRouter.of(context).push(AppRouter.kHome),
            )
          ],
        ),
      ),
    );
  }
}
