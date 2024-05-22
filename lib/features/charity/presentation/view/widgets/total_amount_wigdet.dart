import 'package:aoun_tu/features/charity/presentation/view_model/charity_donation_values_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/utls/colors.dart';
import '../../../../../core/utls/styles.dart';
import '../../../../../core/utls/text.dart';
import '../../../../home/presentation/view/widgets/app_button.dart';

class TotalAmountWidget extends StatelessWidget {
  const TotalAmountWidget({Key? key, required this.index}) : super(key: key);
  final int index;


  @override
  Widget build(BuildContext context) {
    final cubit=BlocProvider.of<CharityDonationValuesCubit>(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 31),
      decoration: BoxDecoration(
        color: AppColors.mainColor.withOpacity(0.1),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
      ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 16,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: AppColors.mainColor),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  AppText.theWholeAmount,
                  style: AppStyles.font16BlueBold,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    if(cubit.isSelected==true&&cubit.enteredAmount.isEmpty)
                      Text(
                        cubit.charityDonationValuesList[index].value,style: AppStyles.almarai19YellowBold,),
                    if(cubit.enteredAmount.isNotEmpty&&cubit.isSelected==false)
                      Text(
                        cubit.enteredAmount,style: AppStyles.almarai19YellowBold,),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      AppText.lE,
                      style:
                      AppStyles.textStyle14.copyWith(color: AppColors.grey),
                    ),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          AppButton(
            title: AppText.payment,
            height: MediaQuery.of(context).size.height * 0.06,
            textStyle: AppStyles.font16WhiteBold,
            onTap: () {},
          ),
          const SizedBox(
            height: 25,
          ),
        ],
      ),
    );
  }
}
