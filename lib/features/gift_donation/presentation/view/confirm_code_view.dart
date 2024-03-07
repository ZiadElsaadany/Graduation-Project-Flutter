import 'package:aoun_tu/core/utls/colors.dart';
import 'package:aoun_tu/core/utls/images.dart';
import 'package:aoun_tu/core/utls/styles.dart';
import 'package:aoun_tu/core/utls/text.dart';
import 'package:aoun_tu/features/gift_donation/presentation/view/widget/custom_pin_code_text_field.dart';
import 'package:aoun_tu/features/home/presentation/view/widgets/app_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ConfirmCodeView extends StatelessWidget {
  const ConfirmCodeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios_new,
            ),
            color: AppColors.mainColor,
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          leadingWidth: 24,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            SvgPicture.asset(AppImages.logoBlue),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Text(
              AppText.confirmVerificationCode,
              style: AppStyles.textStyle17.copyWith(color: AppColors.text1),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 18,
            ),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: AppText.confirmVerificationCodeWasSentTo,
                style: AppStyles.textStyle12.copyWith(color: AppColors.text1),
                children: <TextSpan>[
                  TextSpan(
                    text: '01201354511',
                    style: AppStyles.textStyle14bold
                        .copyWith(color: AppColors.text1),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            CustomPinCodeTextField(),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.015,
            ),
            Text(
              AppText.resentTheCode,
              style: AppStyles.textStyle11bold.copyWith(color: AppColors.text1),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.055,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.height * 0.065,),
              child: AppButton(
                title: AppText.phoneConfirm,
                textStyle:
                    AppStyles.textStyle15bold.copyWith(color: AppColors.white),
                height: MediaQuery.of(context).size.height * 0.06,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
