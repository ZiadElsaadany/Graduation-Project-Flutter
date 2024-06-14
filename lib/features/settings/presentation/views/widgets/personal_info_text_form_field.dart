import 'package:flutter/material.dart';

import '../../../../../core/utls/colors.dart';
import '../../../../../core/utls/styles.dart';

class PersonalInfoTextFormField extends StatelessWidget {
  const PersonalInfoTextFormField(
      {super.key,
      required this.lable,
      required this.initialValue,
      this.keyboardType,
      this.hintText,
      this.validator});
  final String lable;
  final String initialValue;
  final TextInputType? keyboardType;
  final String? hintText;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          lable,
          style: AppStyles.font14LightGreyBold.copyWith(color: AppColors.text1),
        ),
        TextFormField(
          cursorColor: AppColors.mainColor,
          validator: validator,
          initialValue: initialValue,
          style: AppStyles.font16BlueBold
              .copyWith(fontWeight: FontWeight.w400, color: AppColors.text3),
          keyboardType: keyboardType,
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: AppStyles.font11DarkBlueWeight400.copyWith(
              color: AppColors.text2,
            ),
            errorBorder: inputBorder(AppColors.red),
            focusedErrorBorder: inputBorder(AppColors.red),
            enabledBorder: inputBorder(AppColors.c7c7c7),
            focusedBorder: inputBorder(AppColors.mainColor),
          ),
        ),
      ],
    );
  }
}

InputBorder inputBorder(Color color) {
  return UnderlineInputBorder(
    borderSide: BorderSide(color: color),
  );
}
