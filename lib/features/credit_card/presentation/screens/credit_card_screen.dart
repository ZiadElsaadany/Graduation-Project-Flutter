import 'package:flutter/material.dart';
import '../../../../core/utls/colors.dart';
import '../../../../core/utls/text.dart';
import '../../../gift_donation/presentation/view/widget/donate_as_gift_app_bar.dart';
import 'credit_screen_body.dart';

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
      ),
    );
  }
}
