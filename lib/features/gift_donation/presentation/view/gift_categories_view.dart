import 'package:aoun_tu/features/gift_donation/presentation/view/widget/gift_categories_body.dart';
import 'package:flutter/material.dart';

class GiftCategoriesView extends StatelessWidget {
  const GiftCategoriesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: GiftCategoriesBody(),
      ),
    );
  }
}
