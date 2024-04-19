import 'package:aoun_tu/core/utls/colors.dart';
import 'package:aoun_tu/core/utls/styles.dart';
import 'package:aoun_tu/core/utls/text.dart';
import 'package:aoun_tu/features/gift_donation/presentation/view_model/gift_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HideGiftValueRow extends StatelessWidget {
  const HideGiftValueRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GiftCubit, GiftState>(
      builder: (context, state) {
        var cubit = BlocProvider.of<GiftCubit>(context);
        return Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CupertinoCheckbox(
              value: cubit.checkBoxSelected,
              activeColor: AppColors.white,
              side: const BorderSide(color: AppColors.mainColor),
              checkColor: AppColors.green,
              focusColor: AppColors.white,
              onChanged: (bool? value) {
                cubit.isCheckBoxSelected(value!);
              },
            ),
            const SizedBox(
              width: 4,
            ),
            Text(
              AppText.hideTheValueOfTheGiftFromRecipient,
              style: AppStyles.textStyle13.copyWith(color: AppColors.text1),
            ),
          ],
        );
      },
    );
  }
}
