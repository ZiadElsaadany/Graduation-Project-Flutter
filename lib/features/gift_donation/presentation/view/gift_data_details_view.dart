import 'package:aoun_tu/core/utls/colors.dart';
import 'package:aoun_tu/core/utls/text.dart';
import 'package:aoun_tu/features/gift_donation/presentation/view/widget/donate_as_gift_app_bar.dart';
import 'package:aoun_tu/features/gift_donation/presentation/view/widget/gift_data_details_view_body.dart';
import 'package:flutter/material.dart';


class GiftDataDetailsView extends StatelessWidget {
  const GiftDataDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  const Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: AppColors.white,
        appBar: DonateAsGiftAppBar(
          preferredSize: Size.fromHeight(kToolbarHeight),
          title: AppText.giftDetails,
          child: SizedBox(),
        ),
        body: GiftDataDetailsViewBody(),
      ),
    );
  }
}
