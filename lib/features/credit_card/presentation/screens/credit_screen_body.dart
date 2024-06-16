import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import '../../../../core/utls/colors.dart';
import '../../../../core/utls/styles.dart';
import '../../../../core/utls/text.dart';
import '../../../home/presentation/view/widgets/app_button.dart';
import '../widgets/credit_text_field.dart';
import '../widgets/custom_checkbox.dart';

class CreditCardScreenBody extends StatelessWidget {
  const CreditCardScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Padding(
            padding:const EdgeInsets.symmetric(horizontal: 24),
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
        ),
        const AllAmountContainer(),
      ],
    );
  }
}

class AllAmountContainer extends StatelessWidget {
  const AllAmountContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 31),
      decoration: BoxDecoration(
        color: AppColors.mainColor.withOpacity(0.1),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
      ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 16,
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: AppColors.mainColor)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  AppText.theWholeAmount,
                  style: AppStyles.font16BlueBold,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // if(cubit.isSelected==true&&cubit.enteredAmount.isEmpty)
                    //   Text(
                    //     cubit.giftValuesList[index].value,style: AppStyles.almarai19YellowBold,),
                    // if(cubit.enteredAmount.isNotEmpty&&cubit.isSelected==false)
                    //   Text(
                    //     cubit.enteredAmount,style: AppStyles.almarai19YellowBold,),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      AppText.lE,
                      style:
                      AppStyles.textStyle14.copyWith(color: AppColors.grey),
                    ),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          AppButton(
            title: AppText.donateNow,
            height: MediaQuery.of(context).size.height * 0.06,
            textStyle: AppStyles.font16WhiteBold,

          ),
          const SizedBox(
            height: 25,
          ),
        ],
      ),
    );
  }
}

