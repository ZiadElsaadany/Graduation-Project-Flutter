import 'package:aoun_tu/core/utls/routers.dart';
import 'package:aoun_tu/core/utls/styles.dart';
import 'package:aoun_tu/core/utls/text.dart';
import 'package:aoun_tu/features/gift_donation/presentation/view/widget/gift_data_details_header_text.dart';
import 'package:aoun_tu/features/gift_donation/presentation/view/widget/gift_data_sr_text_form_field.dart';
import 'package:aoun_tu/features/gift_donation/presentation/view/widget/hide_gift_value_row.dart';
import 'package:aoun_tu/features/gift_donation/presentation/view/widget/message_text_form_filed.dart';
import 'package:aoun_tu/features/home/presentation/view/widgets/app_button.dart';
import 'package:flutter/material.dart';
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
                const GiftDataSRTextFormField(
                  hintText: AppText.enterRecipientName,
                  labelText: AppText.recipientName,
                ),
                const SizedBox(
                  height: 24,
                ),
                const GiftDataSRTextFormField(
                  hintText: AppText.enterRecipientPhone,
                  labelText: AppText.recipientPhone,
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
                const GiftDataSRTextFormField(
                  hintText: AppText.enterSenderName,
                  labelText: AppText.senderName,
                ),
                const SizedBox(
                  height: 24,
                ),
                const GiftDataSRTextFormField(
                  hintText: AppText.enterSenderPhone,
                  labelText: AppText.senderPhone,
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
                AppButton(
                  title: AppText.askConfirmCode,
                  textStyle: AppStyles.textStyle13bold
                      .copyWith(color: AppColors.white),
                  color: AppColors.yellow,
                  height:  MediaQuery.of(context).size.height * 0.055,
                  width:  MediaQuery.of(context).size.width*0.45,
                  onTap: (){
                    GoRouter.of(context).push(AppRouter.kConfirmCode);
                  },
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                AppButton(
                  title: AppText.next,
                  textStyle: AppStyles.textStyle17
                      .copyWith(color: AppColors.white),
                  color: AppColors.frame,
                  height:  MediaQuery.of(context).size.height * 0.055,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
