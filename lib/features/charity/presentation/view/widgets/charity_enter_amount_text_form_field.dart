import 'package:aoun_tu/core/utls/colors.dart';
import 'package:flutter/material.dart';
import 'package:aoun_tu/features/gift_donation/presentation/view_model/gift_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/utls/styles.dart';
import '../../../../../core/utls/text.dart';


class CharityEnterDonationAmountTextFormField extends StatelessWidget {
  const CharityEnterDonationAmountTextFormField({Key? key, required this.controller})
      : super(key: key);
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    final yellowTextStyle =
    AppStyles.textStyle22bold.copyWith(color: AppColors.yellow);

    return BlocBuilder<GiftCubit, GiftState>(
      builder: (context, state) {
        return TextFormField(
          controller: controller,
          cursorColor: AppColors.mainColor,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            suffixIcon: Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: 17, vertical: 14),
                child: Text(
                  AppText.lE,
                  style: AppStyles.textStyle14.copyWith(color: AppColors.grey),
                )),
            focusedBorder: outLineInputBorder(),
            enabledBorder: outLineInputBorder(),
            hintText: AppText.addAnotherAmount,
            hintStyle: AppStyles.textStyle14.copyWith(color: AppColors.grey),
          ),
          style: yellowTextStyle,
        );
      },
    );
  }

  OutlineInputBorder outLineInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color:  AppColors.mainColor),
    );
  }
}
