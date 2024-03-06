import 'package:aoun_tu/features/gift_donation/data/models/gift_category_model.dart';
import 'package:aoun_tu/features/gift_donation/presentation/view_model/gift_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utls/colors.dart';
import '../../../../../core/utls/styles.dart';
import '../../../../../core/utls/text.dart';

class AddAmountTextFormField extends StatelessWidget {
  const AddAmountTextFormField({Key? key, required this.giftCategoryModel}) : super(key: key);
  final GiftCategoryModel giftCategoryModel;
  @override
  Widget build(BuildContext context) {
    final yellowTextStyle = AppStyles.textStyle22bold.copyWith(color: AppColors.yellow);

    return BlocBuilder<GiftCubit,GiftState>(
  builder: (context, state) {
    return TextFormField(
      controller: BlocProvider.of<GiftCubit>(context).textEditingController,
      cursorColor: giftCategoryModel.color,
      keyboardType:  TextInputType.number,
      decoration: InputDecoration(
        suffixIcon: Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: 17, vertical: 14),
            child: Text(
              AppText.lE,
              style: AppStyles.textStyle14
                  .copyWith(color: AppColors.grey),
            )),
        focusedBorder: outLineInputBorder(),
        enabledBorder: outLineInputBorder(),
        hintText: AppText.addAnotherAmount,
        hintStyle:
        AppStyles.textStyle14.copyWith(color: AppColors.grey),
      ),
      style: yellowTextStyle,
    );
  },
);
  }
  OutlineInputBorder outLineInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(color: giftCategoryModel.color!),
    );
  }
}
