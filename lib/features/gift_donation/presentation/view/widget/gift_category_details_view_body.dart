import 'package:aoun_tu/features/gift_donation/data/models/gift_values_model.dart';
import 'package:aoun_tu/features/gift_donation/presentation/view/widget/add_amount_text_form_field.dart';
import 'package:aoun_tu/features/gift_donation/presentation/view/widget/custom_gift_value_container.dart';
import 'package:aoun_tu/features/gift_donation/presentation/view/widget/whole_amount_container.dart';
import 'package:aoun_tu/features/gift_donation/presentation/view_model/gift_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:aoun_tu/core/utls/styles.dart';
import 'package:aoun_tu/core/utls/text.dart';
import 'package:aoun_tu/features/gift_donation/presentation/view/widget/category_details_header.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GiftCategoryDetailsViewBody extends StatelessWidget {
  const GiftCategoryDetailsViewBody({Key? key,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GiftCubit, GiftState>(
      builder: (context, state) {
        var cubit = BlocProvider.of<GiftCubit>(context);
        final size=MediaQuery.of(context).size;
        return Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: size.width*0.03,vertical: size.height*0.035),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const CategoryDetailsHeader(title: '', color: Colors.black38,),
                        Column(
                          children: [
                            SizedBox(
                                height: size.height*0.03
                            ),
                            Text(
                              AppText.determinateTheGiftValue,
                              style: AppStyles.textStyle20,
                            ),
                            SizedBox(
                                height: size.height*0.02
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                CustomGiftValueContainer(
                                  text: giftValuesList[0].value,
                                  onTap: () {
                                    cubit.selectedItemIndex(0);
                                  },
                                  index: 0,
                                ),
                                CustomGiftValueContainer(
                                  text: giftValuesList[1].value,
                                  onTap: () {
                                    cubit.selectedItemIndex(1);
                                  },
                                  index: 1,
                                ),
                                CustomGiftValueContainer(
                                  text: giftValuesList[2].value,
                                  onTap: () {
                                    cubit.selectedItemIndex(2);
                                  },
                                  index: 2,
                                ),
                                CustomGiftValueContainer(
                                  text: giftValuesList[3].value,
                                  onTap: () {
                                    cubit.selectedItemIndex(3);
                                  },
                                  index: 3,
                                ),
                              ],
                            ),
                            Padding(
                              padding:  EdgeInsets.symmetric(
                                  vertical: size.height*0.03),
                              child: AddAmountTextFormField(),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            if(cubit.selected|| (cubit.giftValueTextEditingController.text.isNotEmpty))
             const AllAmountContainer()
          ],
        );
      },
    );
  }
}
