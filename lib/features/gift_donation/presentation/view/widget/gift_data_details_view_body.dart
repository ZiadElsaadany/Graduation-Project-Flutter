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

class GiftDataDetailsViewBody extends StatefulWidget {
  const GiftDataDetailsViewBody({Key? key}) : super(key: key);

  @override
  State<GiftDataDetailsViewBody> createState() =>
      _GiftDataDetailsViewBodyState();
}

class _GiftDataDetailsViewBodyState extends State<GiftDataDetailsViewBody> {
  final TextEditingController recipientNameTextController =
      TextEditingController();
  final TextEditingController recipientPhoneTextController =
      TextEditingController();
  final TextEditingController senderPhoneTextController =
      TextEditingController();

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
                  controller: recipientNameTextController,
                ),
                const SizedBox(
                  height: 24,
                ),
                GiftDataSRTextFormField(
                  hintText: AppText.enterRecipientPhone,
                  labelText: AppText.recipientPhone,
                  controller: recipientPhoneTextController,
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
                GiftDataSRTextFormField(
                  hintText: AppText.enterSenderPhone,
                  labelText: AppText.confirmSenderPhone,
                  controller: senderPhoneTextController,
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
                      title: AppText.phoneConfirm,
                      color: AppColors.yellow,
                      onTap: () {},
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
                  color: AppColors.frame,
                  height: MediaQuery.of(context).size.height * 0.055,
                  onTap: () =>
                      GoRouter.of(context).push(AppRouter.kCreditCardScreen),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
