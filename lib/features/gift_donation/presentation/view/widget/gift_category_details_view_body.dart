import 'package:aoun_tu/features/gift_donation/presentation/view/widget/add_amount_text_form_field.dart';
import 'package:aoun_tu/features/gift_donation/presentation/view/widget/custom_gift_value_container.dart';
import 'package:aoun_tu/features/gift_donation/presentation/view/widget/whole_amount_container.dart';
import 'package:flutter/material.dart';
import 'package:aoun_tu/core/utls/styles.dart';
import 'package:aoun_tu/core/utls/text.dart';
import 'package:aoun_tu/features/gift_donation/presentation/view/widget/category_details_header.dart';
import '../../../data/models/gift_category_model.dart';

class GiftCategoryDetailsViewBody extends StatelessWidget {
  GiftCategoryDetailsViewBody({Key? key, required this.giftCategoryModel})
      : super(key: key);
  final _formKey = GlobalKey<FormState>();
  final GiftCategoryModel giftCategoryModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex:4,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 24,
            ),
            child: Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 22,
                    ),
                    CategoryDetailsHeader(
                      giftCategoryModel: giftCategoryModel,
                    ),
                    Column(
                      children: [
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
                            CustomGiftValueContainer(
                              text: ' 50 ',
                              giftCategoryModel: giftCategoryModel, selected: true,
                            ),
                            CustomGiftValueContainer(
                              text: '100',
                              giftCategoryModel: giftCategoryModel,
                              selected: false,
                            ),
                            CustomGiftValueContainer(
                              text: '150',
                              giftCategoryModel: giftCategoryModel,
                              selected: false,
                            ),
                            CustomGiftValueContainer(
                              text: '200',
                              giftCategoryModel: giftCategoryModel,
                              selected: false,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Expanded(
          flex: 7,
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                 Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 31),
                  child: AddAmountTextFormField(giftCategoryModel: giftCategoryModel,),
                ),
                const Spacer(),
                const AllAmountContainer(),
              ],
            ),
          ),
        ),
      ],
    );
  }

  
}
