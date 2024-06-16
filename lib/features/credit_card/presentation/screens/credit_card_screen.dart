import 'package:aoun_tu/core/utls/styles.dart';
import 'package:aoun_tu/features/credit_card/presentation/widgets/credit_text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../core/utls/colors.dart';
import '../../../../core/utls/text.dart';
import '../../../gift_donation/presentation/view/widget/donate_as_gift_app_bar.dart';

class CreditCardScreen extends StatelessWidget {
  const CreditCardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          backgroundColor: AppColors.white,
          appBar: DonateAsGiftAppBar(
            preferredSize: Size.fromHeight(kToolbarHeight),
            title: AppText.donateAsGift,
            child: SizedBox(),
          ),
          body: CreditCardScreenBody(),
        ));
  }
}

class CreditCardScreenBody extends StatelessWidget {
  const CreditCardScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: ListView(
            children: [
              SizedBox(height: size.height*0.02,),
              Text(
                AppText.enterCreditCardData,
                style:
                    AppStyles.textStyle15bold.copyWith(color: AppColors.text1),
              ),
              CreditTextField(hintText: 'hintText', labelText: 'labelText')
            ],
          ),
        ),
      ],
    );
  }
}
