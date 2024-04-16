import 'package:aoun_tu/core/utls/colors.dart';
import 'package:aoun_tu/features/gift_donation/presentation/view_model/gift_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/utls/styles.dart';
import '../../../data/models/gift_category_model.dart';

class CustomGiftValueContainer extends StatelessWidget {
  const CustomGiftValueContainer({
    Key? key,
    required this.text,
    required this.giftCategoryModel,
    required this.onTap,
    required this.index,
  }) : super(key: key);

  final String text;
  final GiftCategoryModel giftCategoryModel;
  final Function() onTap;
  final int index;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GiftCubit, GiftState>(
      builder: (context, state) {
        var cubit = BlocProvider.of<GiftCubit>(context);
        return GestureDetector(
          onTap: onTap,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 20),
            decoration: BoxDecoration(
                color: (cubit.itemIndex == index && cubit.selected == true)
                    ? giftCategoryModel.color!
                    : Colors.transparent,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: giftCategoryModel.color!)),
            child: Text(
              text,
              style: (cubit.itemIndex == index && cubit.selected == true)
                  ? AppStyles.textStyle17.copyWith(color: AppColors.white)
                  : AppStyles.textStyle17,
            ),
          ),
        );
      },
    );
  }
}
