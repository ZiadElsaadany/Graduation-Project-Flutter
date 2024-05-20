import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/utls/colors.dart';
import '../../../../../core/utls/styles.dart';
import '../../../../../core/utls/text.dart';
import 'package:aoun_tu/features/gift_donation/presentation/view_model/gift_cubit.dart';

class AddAmountTextFormField extends StatelessWidget {
  const AddAmountTextFormField({
    Key? key,
    required this.color,
  }) : super(key: key);
  final Color color;

  @override
  Widget build(BuildContext context) {
    final yellowTextStyle =
        AppStyles.textStyle22bold.copyWith(color: AppColors.yellow);
    var cubit = BlocProvider.of<GiftCubit>(context);
    return TextField(
      cursorColor: color,
      keyboardType: const TextInputType.numberWithOptions(
        decimal: true,
      ),
      decoration: InputDecoration(
        suffixIcon: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 14),
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
      onChanged: (value){
        cubit.isSelected=false;
        cubit.enterAmount(value);
      },
    );
  }

  OutlineInputBorder outLineInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(color: color),
    );
  }
}
