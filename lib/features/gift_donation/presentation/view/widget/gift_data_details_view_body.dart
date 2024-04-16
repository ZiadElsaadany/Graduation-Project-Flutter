import 'package:aoun_tu/core/utls/routers.dart';
import 'package:aoun_tu/core/utls/styles.dart';
import 'package:aoun_tu/core/utls/text.dart';
import 'package:aoun_tu/features/gift_donation/presentation/view/widget/confirm_code_custom_button.dart';
import 'package:aoun_tu/features/gift_donation/presentation/view/widget/gift_data_details_header_text.dart';
import 'package:aoun_tu/features/gift_donation/presentation/view/widget/gift_data_sr_text_form_field.dart';
import 'package:aoun_tu/features/gift_donation/presentation/view/widget/hide_gift_value_row.dart';
import 'package:aoun_tu/features/gift_donation/presentation/view/widget/message_text_form_filed.dart';
import 'package:aoun_tu/features/gift_donation/presentation/view_model/gift_cubit.dart';
import 'package:aoun_tu/features/home/presentation/view/widgets/app_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utls/colors.dart';

class GiftDataDetailsViewBody extends StatelessWidget {
  const GiftDataDetailsViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: 24, vertical: MediaQuery.of(context).size.height * 0.03),
      child: ListView(
        children: [
          const GiftDataDetailsHeaderText(
            text: AppText.enterTheGiftRecipientInfo,
          ),
          const SizedBox(
            height: 24,
          ),
          Form(
            child: Column(
              children: [
                GiftDataSRTextFormField(
                  hintText: AppText.enterRecipientName,
                  labelText: AppText.recipientName,
                  controller: BlocProvider.of<GiftCubit>(context)
                      .recipientNameTextController,
                ),
                const SizedBox(
                  height: 24,
                ),
                GiftDataSRTextFormField(
                  hintText: AppText.enterRecipientPhone,
                  labelText: AppText.recipientPhone,
                  controller: BlocProvider.of<GiftCubit>(context)
                      .recipientPhoneTextController,
                ),
                const SizedBox(
                  height: 24,
                ),
                const MessageTextFormFiled(),
                const SizedBox(
                  height: 10,
                ),
                const HideGiftValueRow(),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.07),
                  child: const Divider(
                    color: AppColors.frame,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.034,
                ),
                const GiftDataDetailsHeaderText(
                  text: AppText.enterSenderData,
                ),
                const SizedBox(
                  height: 24,
                ),
                GiftDataSRTextFormField(
                  hintText: AppText.enterSenderName,
                  labelText: AppText.senderName,
                  controller: BlocProvider.of<GiftCubit>(context)
                      .senderNameTextController,
                ),
                const SizedBox(
                  height: 24,
                ),
                GiftDataSRTextFormField(
                  hintText: AppText.enterSenderPhone,
                  labelText: AppText.senderPhone,
                  controller: BlocProvider.of<GiftCubit>(context)
                      .senderPhoneTextController,
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  AppText.thisPhoneWillBeSentToTheRecipient,
                  style: AppStyles.textStyle12.copyWith(color: AppColors.text1),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.034,
                ),
                BlocBuilder<GiftCubit, GiftState>(
                  builder: (context, state) {
                    return ConfirmCodeCustomButton(
                      title: BlocProvider.of<GiftCubit>(context)
                                  .pinCodeController
                                  .text ==
                              '22335'
                          ? AppText.confirmedSuccessful
                          : AppText.askConfirmCode,
                      color: BlocProvider.of<GiftCubit>(context)
                                  .pinCodeController
                                  .text ==
                              '22335'
                          ? AppColors.green
                          : AppColors.yellow,
                      onTap: () {
                        if (BlocProvider.of<GiftCubit>(context)
                                .pinCodeController
                                .text ==
                            '') {
                          GoRouter.of(context).pushReplacement(AppRouter.kConfirmCode);
                        }
                      },
                    );
                  },
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                AppButton(
                  title: AppText.next,
                  textStyle:
                      AppStyles.textStyle17.copyWith(color: AppColors.white),
                  color: BlocProvider.of<GiftCubit>(context)
                              .pinCodeController
                              .text ==
                          '22335'
                      ? AppColors.mainColor
                      : AppColors.frame,
                  height: MediaQuery.of(context).size.height * 0.055,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
