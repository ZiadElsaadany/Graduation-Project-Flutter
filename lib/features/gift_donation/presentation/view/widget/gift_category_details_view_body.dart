import 'package:aoun_tu/core/utls/colors.dart';
import 'package:aoun_tu/features/gift_donation/presentation/view/widget/custom_gift_value_container.dart';
import 'package:flutter/material.dart';
import 'package:aoun_tu/core/utls/styles.dart';
import 'package:aoun_tu/core/utls/text.dart';
import 'package:aoun_tu/features/gift_donation/presentation/view/widget/category_details_header.dart';

import '../../../data/models/gift_category_model.dart';

class GiftCategoryDetailsViewBody extends StatelessWidget {
  GiftCategoryDetailsViewBody({Key? key, required this.giftCategoryModel}) : super(key: key);
  final _formKey = GlobalKey<FormState>();
  final GiftCategoryModel giftCategoryModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 22),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CategoryDetailsHeader(giftCategoryModel: giftCategoryModel,),
          Column(children: [
            const SizedBox(
              height: 25,
            ),
            Text(
              AppText.determinateTheGiftValue,
              style: AppStyles.textStyle20,
            ),
            const SizedBox(
              height: 25,
            ),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomGiftValueContainer(text: ' 50 ',giftCategoryModel: giftCategoryModel,),
                CustomGiftValueContainer(text: '100',giftCategoryModel: giftCategoryModel,),
                CustomGiftValueContainer(text: '150',giftCategoryModel: giftCategoryModel,),
                CustomGiftValueContainer(text: '200',giftCategoryModel: giftCategoryModel,),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.06,
            ),
            Form(
              key: _formKey,
              child: TextFormField(
                cursorColor: Colors.deepPurple,
                decoration: InputDecoration(
                  suffixIcon: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 17,vertical: 14),
                    child: Text(AppText.lE,style: AppStyles.textStyle14.copyWith(color: AppColors.grey),)
                  ),
                  focusedBorder: outLineInputBorder(),
                  enabledBorder: outLineInputBorder(),
                  hintText: AppText.addAnotherAmount,
                  hintStyle:
                      AppStyles.textStyle14.copyWith(color: AppColors.grey),
                ),

              ),
            ),
          ])
        ],
      ),
    );
  }
  OutlineInputBorder outLineInputBorder(){
   return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide:  BorderSide(
        color: giftCategoryModel.color!
      ),
    );
  }
}

