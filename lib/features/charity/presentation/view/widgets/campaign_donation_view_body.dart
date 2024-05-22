import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:aoun_tu/core/utls/styles.dart';
import 'package:aoun_tu/core/utls/text.dart';
import 'package:aoun_tu/features/charity/presentation/view_model/charity_donation_values_cubit.dart';
import 'package:aoun_tu/features/charity/presentation/view/widgets/charity_enter_amount_text_form_field.dart';
import 'package:aoun_tu/features/charity/presentation/view/widgets/custom_linear_progress_indicator_with_value.dart';
import 'package:aoun_tu/features/charity/presentation/view/widgets/total_amount_wigdet.dart';
import '../../../../../core/utls/colors.dart';
import 'charity_donation_value_container.dart';

class CampaignDonationViewBody extends StatelessWidget {
  const CampaignDonationViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CharityDonationValuesCubit, CharityDonationValuesState>(
      builder: (context, state) {
        var cubit = BlocProvider.of<CharityDonationValuesCubit>(context);
        final size = MediaQuery.of(context).size;
        return Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ListView(
                shrinkWrap: true,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: size.width * 0.03,
                        vertical: size.height * 0.035),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(24),
                          child: CustomLinearProgressWithValue(),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        Text(
                          AppText.selectTheDonationAmount,
                          style: AppStyles.textStyle16,
                        ),
                         SizedBox(
                          height: size.height * 0.035,
                        ),
                        SizedBox(
                          height: size.height * 0.094,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: cubit.charityDonationValuesList.length,
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                onTap: () {
                                  context
                                      .read<CharityDonationValuesCubit>()
                                      .selectedItemIndex(index);
                                  cubit.enteredAmount = '';
                                },
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: size.width * 0.05,
                                      vertical: size.height * 0.012),
                                  // Add some spacing between items
                                  child: CharityDonationValuesContainer(
                                    text: cubit
                                        .charityDonationValuesList[index].value,
                                    color: cubit.selectedIndex == index &&
                                            cubit.enteredAmount.isEmpty
                                        ? AppColors.mainColor
                                        : AppColors.white,
                                    textColor: cubit.selectedIndex == index &&
                                            cubit.enteredAmount.isEmpty
                                        ? Colors.white
                                        : AppColors.black,
                                    borderColor: AppColors.mainColor,
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        SizedBox(height: size.height * 0.03,),
                        const CharityEnterDonationAmountTextFormField(),
                      ],
                    ),
                  ),
                ],
              ),
              if (cubit.isSelected || cubit.enteredAmount.isNotEmpty)
                TotalAmountWidget(
                  index: context.read<CharityDonationValuesCubit>().selectedIndex,
                ),
            ],
          ),
        );
      },
    );
  }
}
