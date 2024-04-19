import 'package:aoun_tu/core/utls/colors.dart';
import 'package:aoun_tu/features/charity/presentation/view/view_model/charity_donation_values_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/utls/styles.dart';


class CharityDonationValuesContainer extends StatelessWidget {
  const CharityDonationValuesContainer({
    Key? key,
    required this.text,
    required this.onTap,
    required this.index,
  }) : super(key: key);

  final String text;
  final Function() onTap;
  final int index;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CharityDonationValuesCubit, CharityDonationValuesState>(
      builder: (context, state) {
        var cubit=BlocProvider.of<CharityDonationValuesCubit>(context);
        return GestureDetector(
          onTap: onTap,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 20),
            decoration: BoxDecoration(
              color: (cubit.charityItemIndex== index && cubit.selected == true)
                  ? AppColors.mainColor
                  : Colors.transparent,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: AppColors.mainColor),
            ),
            child: Text(
              text,
              style: (cubit.charityItemIndex == index && cubit.selected == true)
                  ? AppStyles.textStyle17.copyWith(color: AppColors.white)
                  : AppStyles.textStyle17,
            ),
          ),
        );
      },
    );
  }
}
