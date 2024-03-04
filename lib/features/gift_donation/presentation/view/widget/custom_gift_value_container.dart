import 'package:flutter/material.dart';

import '../../../../../core/utls/styles.dart';
import '../../../data/models/gift_category_model.dart';
class CustomGiftValueContainer extends StatelessWidget {
  const CustomGiftValueContainer({Key? key, required this.text, required this.giftCategoryModel}) : super(key: key);

  final String text;
  final GiftCategoryModel giftCategoryModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
      const EdgeInsets.symmetric(horizontal: 17, vertical: 20),
      decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: giftCategoryModel.color!)),
      child: Text(
        text,
        style: AppStyles.textStyle17,
      ),
    );
  }
}
