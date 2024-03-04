import 'package:aoun_tu/core/utls/text.dart';
import 'package:aoun_tu/features/gift_donation/presentation/view/widget/donate_as_gift_app_bar.dart';
import 'package:aoun_tu/features/gift_donation/presentation/view/widget/gift_category_view_body.dart';
import 'package:flutter/material.dart';

class GiftCategoryDetailsView extends StatelessWidget {
  const GiftCategoryDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar:DonateAsGiftAppBar(
          preferredSize: const Size.fromHeight(kToolbarHeight),
            title: AppText.donateAsGift, child: Container(),
        ),
        body: GiftCategoryDetailsViewBody(),
      ),
    );
  }
}
