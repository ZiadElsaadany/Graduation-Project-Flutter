import 'package:aoun_tu/core/utls/colors.dart';
import 'package:aoun_tu/features/gift_donation/presentation/view_model/gift_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/utls/styles.dart';

class CustomGiftValueContainer extends StatelessWidget {
  const CustomGiftValueContainer({
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
    return BlocBuilder<GiftCubit, GiftState>(
      builder: (context, state) {
        var cubit = BlocProvider.of<GiftCubit>(context);
        final size=MediaQuery.of(context).size;
        return GestureDetector(
          onTap: onTap,
          child: Container(
            padding:  EdgeInsets.symmetric(horizontal: size.width*0.038, vertical: size.height*0.02),
            decoration: BoxDecoration(
                color: (cubit.itemIndex == index && cubit.selected == true)
                    ? Colors.teal
                    : Colors.transparent,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.teal)),
            child: Text(
              textAlign: TextAlign.center,
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
