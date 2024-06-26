import 'package:aoun_tu/core/utls/styles.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utls/colors.dart';

class GiftDataSRTextFormField extends StatelessWidget {
  const GiftDataSRTextFormField(
      {Key? key,
      required this.hintText,
      required this.labelText,
      this.controller})
      : super(key: key);

  final String hintText;
  final String labelText;
  final TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: 1,
      autocorrect: false,
      controller: controller,
      style: AppStyles.textStyle13bold.copyWith(color: AppColors.text1),
      textAlign: TextAlign.center,
      cursorColor: AppColors.mainColor,
      decoration: InputDecoration(
        border: outLineInputBorder(),
        enabledBorder: outLineInputBorder(),
        focusedBorder: outLineInputBorder(),
        hintText: hintText,
        hintStyle: AppStyles.textStyle11.copyWith(
          color: AppColors.mainColor.withOpacity(0.7),
        ),
        labelText: labelText,
        labelStyle: AppStyles.textStyle11.copyWith(
          color: AppColors.text1,
        ),
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
