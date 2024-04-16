import 'package:aoun_tu/core/utls/styles.dart';
import 'package:aoun_tu/core/utls/text.dart';
import 'package:aoun_tu/features/charity/data/charity_donation_values.dart';
import 'package:aoun_tu/features/charity/presentation/view/view_model/charity_donation_values_cubit.dart';
import 'package:aoun_tu/features/charity/presentation/view/widgets/charity_donation_value_container.dart';
import 'package:aoun_tu/features/charity/presentation/view/widgets/charity_enter_amount_text_form_field.dart';
import 'package:aoun_tu/features/charity/presentation/view/widgets/custom_linear_progress_indicator_with_value.dart';
import 'package:aoun_tu/features/charity/presentation/view/widgets/total_amount_wigdet.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CampaignDonationViewBody extends StatefulWidget {
  const CampaignDonationViewBody({Key? key}) : super(key: key);

  @override
  State<CampaignDonationViewBody> createState() =>
      _CampaignDonationViewBodyState();
}

class _CampaignDonationViewBodyState extends State<CampaignDonationViewBody> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: CharityDonationValuesCubit(),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(24),
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
                const SizedBox(
                  height: 25,
                ),
                BlocBuilder<CharityDonationValuesCubit,
                    CharityDonationValuesState>(
                  builder: (context, state) {
                    var cubit =
                        BlocProvider.of<CharityDonationValuesCubit>(context);
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CharityDonationValuesContainer(
                          text: charityDonationValuesList[0].value,
                          onTap: () {
                            cubit.selectedItemIndex(0);
                          },
                          index: 0,
                        ),
                        CharityDonationValuesContainer(
                          text: charityDonationValuesList[1].value,
                          onTap: () {
                            cubit.selectedItemIndex(1);
                          },
                          index: 1,
                        ),
                        CharityDonationValuesContainer(
                          text: charityDonationValuesList[2].value,
                          onTap: () {
                            cubit.selectedItemIndex(2);
                          },
                          index: 2,
                        ),
                        CharityDonationValuesContainer(
                          text: charityDonationValuesList[3].value,
                          onTap: () {
                            cubit.selectedItemIndex(3);
                          },
                          index: 3,
                        ),
                      ],
                    );
                  },
                ),

              ],
            ),
          ),
          Form(
            key: _formKey,
            child:  Column(
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: 24, vertical: 31),
                  child: CharityEnterDonationAmountTextFormField(),
                ),
                SizedBox(height: MediaQuery.of(context).size.height*0.1935,),
                const TotalAmountWidget(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
