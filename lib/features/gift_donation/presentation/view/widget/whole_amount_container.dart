import 'package:aoun_tu/core/utls/routers.dart';
import 'package:aoun_tu/features/gift_donation/presentation/view_model/gift_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/utls/colors.dart';
import '../../../../../core/utls/styles.dart';
import '../../../../../core/utls/text.dart';
import '../../../../home/presentation/view/widgets/app_button.dart';

class AllAmountContainer extends StatelessWidget {
  const AllAmountContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                border: Border.all(color: AppColors.mainColor)),
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
                    BlocBuilder<GiftCubit, GiftState>(
                      builder: (context, state) {
                        return Text(
                          ''

                              // (cubit.textEditingController.text.isNotEmpty)
                              //     ? cubit.textEditingController.text
                              //     :(cubit.selected)
                              //     ? cubit.values[cubit.itemIndex]: "",
                          // style: AppStyles.font18Bold
                          //     .copyWith(color: AppColors.yellow),
                        );
                      },
                    ),
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
            onTap: (){
              GoRouter.of(context).push(AppRouter.kGiftDataDetailsView);
            },
          ),
          const SizedBox(
            height: 25,
          ),
        ],
      ),
    );
  }
}
