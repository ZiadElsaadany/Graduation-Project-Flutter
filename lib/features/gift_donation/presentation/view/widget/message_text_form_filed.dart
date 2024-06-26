import 'package:aoun_tu/core/utls/colors.dart';
import 'package:aoun_tu/core/utls/styles.dart';
import 'package:aoun_tu/core/utls/text.dart';
import 'package:flutter/material.dart';

class MessageTextFormFiled extends StatelessWidget {
  const MessageTextFormFiled({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: AppColors.mainColor,
      style: AppStyles.textStyle13bold.copyWith(color: AppColors.text1),
      textAlign: TextAlign.center,
      decoration: InputDecoration(
        hintText: AppText.yourMessageToTheRecipient,
        hintStyle: AppStyles.textStyle13.copyWith(color: AppColors.text3),
        enabledBorder: outLineInputBorder(),
        focusedBorder: outLineInputBorder(),
        filled: true,
        fillColor: AppColors.mainColor.withOpacity(0.05),
        contentPadding: EdgeInsets.symmetric(
            vertical: MediaQuery.of(context).size.height * 0.05),
      ),
    );
  }

  OutlineInputBorder outLineInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(color: AppColors.mainColor),
    );
  }
}
