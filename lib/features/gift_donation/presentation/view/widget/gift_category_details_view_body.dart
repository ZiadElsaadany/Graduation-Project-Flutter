import 'package:aoun_tu/core/utls/colors.dart';
import 'package:aoun_tu/features/gift_donation/presentation/view/widget/add_amount_text_form_field.dart';
import 'package:aoun_tu/features/gift_donation/presentation/view/widget/custom_gift_value_container.dart';
import 'package:aoun_tu/features/gift_donation/presentation/view/widget/whole_amount_container.dart';
import 'package:aoun_tu/features/gift_donation/presentation/view_model/gift_cubit.dart';
import 'package:flutter/material.dart';
import 'package:aoun_tu/core/utls/styles.dart';
import 'package:aoun_tu/core/utls/text.dart';
import 'package:aoun_tu/features/gift_donation/presentation/view/widget/category_details_header.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GiftCategoryDetailsViewBody extends StatelessWidget {
  const GiftCategoryDetailsViewBody({
    Key? key,
    required this.color,
    required this.text,
  }) : super(key: key);
  final Color color;
  final String text;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GiftCubit, GiftState>(
      builder: (context, state) {
        var cubit = BlocProvider.of<GiftCubit>(context);
        final size = MediaQuery.of(context).size;
        return Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: size.width * 0.03,
                        vertical: size.height * 0.035),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CategoryDetailsHeader(
                          title: text,
                          color: color,
                        ),
                        Column(
                          children: [
                            SizedBox(height: size.height * 0.03),
                            Text(
                              AppText.determinateTheGiftValue,
                              style: AppStyles.textStyle20,
                            ),
                            SizedBox(height: size.height * 0.02),
                            SizedBox(
                              height: size.height * 0.094,
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: cubit.giftValuesList.length,
                                itemBuilder: (context, index) {
                                  return GestureDetector(
                                    onTap: () {
                                      context
                                          .read<GiftCubit>()
                                          .selectedItemIndex(index);
                                    },
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: size.width * 0.05,
                                          vertical: size.height * 0.012),
                                      // Add some spacing between items
                                      child: CustomGiftValueContainer(
                                        text: cubit.giftValuesList[index].value,
                                        color: cubit.selectedIndex == index
                                            ? color
                                            : AppColors.white,
                                        textColor: cubit.selectedIndex == index
                                            ? Colors.white
                                            : AppColors.black,
                                        borderColor: color,
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: size.height * 0.03),
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
            // if (cubit.isSelected ||
            //     (cubit.giftValueTextEditingController.text.isNotEmpty))
            const AllAmountContainer()
          ],
        );
      },
    );
  }
}
