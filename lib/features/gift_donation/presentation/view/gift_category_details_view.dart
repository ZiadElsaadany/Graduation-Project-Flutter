import 'package:aoun_tu/core/utls/text.dart';
import 'package:aoun_tu/features/gift_donation/data/models/gift_category_model.dart';
import 'package:aoun_tu/features/gift_donation/presentation/view/widget/donate_as_gift_app_bar.dart';
import 'package:aoun_tu/features/gift_donation/presentation/view/widget/gift_category_details_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/utls/colors.dart';
import '../view_model/gift_cubit.dart';

class GiftCategoryDetailsView extends StatelessWidget {
  const GiftCategoryDetailsView({super.key, required this.giftCategoryModel});

  final GiftCategoryModel giftCategoryModel;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: AppColors.white,
        appBar: const DonateAsGiftAppBar(
          preferredSize: Size.fromHeight(kToolbarHeight),
          title: AppText.donateAsGift, child: SizedBox(),
        ),
        body: BlocProvider.value(
          value:  GiftCubit(),
          child: GiftCategoryDetailsViewBody(
            giftCategoryModel: giftCategoryModel,),
        ),
      ),
    );
  }
}
