import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import '../../../../core/utls/colors.dart';
import '../../../../core/utls/styles.dart';
import '../../../../core/utls/text.dart';
import '../widgets/credit_text_field.dart';
import '../widgets/custom_checkbox.dart';

class CreditCardScreenBody extends StatelessWidget {
  const CreditCardScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: ListView(
              children: [
                SizedBox(
                  height: size.height * 0.04,
                ),
                Text(
                  AppText.enterCreditCardData,
                  style: AppStyles.textStyle15bold
                      .copyWith(color: AppColors.text1),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: size.height * 0.04,
                ),
                const CreditTextField(
                    hintText: AppText.enterCreditCardNum,
                    labelText: AppText.enterCreditCardNum),
                SizedBox(
                  height: size.height * 0.03,
                ),
                Text(
                  AppText.expiryDate,
                  style: AppStyles.textStyle14.copyWith(color: AppColors.text1),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: size.height * 0.015,
                ),
                const Row(
                  children: [
                    Expanded(
                      child: Directionality(
                        textDirection: TextDirection.ltr,
                        child: CreditTextField(hintText: "MM", labelText: "MM"),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: Directionality(
                        textDirection: TextDirection.ltr,
                        child: CreditTextField(hintText: "YY", labelText: "YY"),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: size.height * 0.03,
                ),
                Text(
                  AppText.cvvNumber,
                  style: AppStyles.textStyle14.copyWith(color: AppColors.text1),
                ),
                SizedBox(
                  height: size.height * 0.015,
                ),
                const Row(
                  children: [
                    Expanded(
                      child: Directionality(
                        textDirection: TextDirection.ltr,
                        child:
                        CreditTextField(hintText: "CVV", labelText: "CVV"),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: Directionality(
                        textDirection: TextDirection.ltr,
                        child: SizedBox(),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: size.height * 0.03,
                ),
                const CreditTextField(
                    hintText: AppText.creditCardHolderName,
                    labelText: AppText.creditCardHolderName),
                SizedBox(
                  height: size.height * 0.02,
                ),
                Row(
                  children: [
                    const CustomCheckbox(),
                    RichText(
                      text: TextSpan(
                        text: AppText.agreeTo,
                        style: AppStyles.textStyle13
                            .copyWith(color: AppColors.text1),
                        children: [
                          TextSpan(
                              text: AppText.termsAndConditions,
                              style: AppStyles.font12BlueBold.copyWith(
                                  decoration: TextDecoration.underline),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {}),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

