import 'package:aoun_tu/features/gift_donation/data/models/gift_values_model.dart';
import 'package:aoun_tu/core/shared_widgets/add_amount_text_form_field.dart';
import 'package:aoun_tu/core/shared_widgets/custom_gift_value_container.dart';
import 'package:aoun_tu/features/gift_donation/presentation/view/widget/whole_amount_container.dart';
import 'package:aoun_tu/features/gift_donation/presentation/view_model/gift_cubit.dart';
import 'package:flutter/material.dart';
import 'package:aoun_tu/core/utls/styles.dart';
import 'package:aoun_tu/core/utls/text.dart';
import 'package:aoun_tu/features/gift_donation/presentation/view/widget/category_details_header.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../data/models/gift_category_model.dart';

class GiftCategoryDetailsViewBody extends StatelessWidget {
  GiftCategoryDetailsViewBody({Key? key, required this.giftCategoryModel})
      : super(key: key);
  final _formKey = GlobalKey<FormState>();
  final GiftCategoryModel giftCategoryModel;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GiftCubit(),
      child: BlocBuilder<GiftCubit, GiftState>(
        builder: (context, state) {
          var cubit = BlocProvider.of<GiftCubit>(context);
          return Column(
            children: [
              Expanded(
                flex: 4,
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  CustomGiftValueContainer(
                                    text: giftValuesList[0].value,
                                    giftCategoryModel: giftCategoryModel,
                                    onTap: () {
                                      cubit.selectedItemIndex(0);
                                    },
                                    index: 0,
                                  ),
                                  CustomGiftValueContainer(
                                    text: giftValuesList[1].value,
                                    giftCategoryModel: giftCategoryModel,
                                    onTap: () {
                                      cubit.selectedItemIndex(1);
                                    },
                                    index: 1,
                                  ),
                                  CustomGiftValueContainer(
                                    text: giftValuesList[2].value,
                                    giftCategoryModel: giftCategoryModel,
                                    onTap: () {
                                      cubit.selectedItemIndex(2);
                                    },
                                    index: 2,
                                  ),
                                  CustomGiftValueContainer(
                                    text: giftValuesList[3].value,
                                    giftCategoryModel: giftCategoryModel,
                                    onTap: () {
                                      cubit.selectedItemIndex(3);
                                    },
                                    index: 3,
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
                        padding: const EdgeInsets.symmetric(
                            horizontal: 24, vertical: 31),
                        child: AddAmountTextFormField(
                          giftCategoryModel: giftCategoryModel,
                          controller: BlocProvider.of<GiftCubit>(context)
                              .giftValueTextEditingController,
                        ),
                      ),
                      const Spacer(),
                      const AllAmountContainer(),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
