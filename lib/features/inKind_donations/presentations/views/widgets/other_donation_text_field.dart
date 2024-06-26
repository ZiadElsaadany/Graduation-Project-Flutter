import 'package:flutter/material.dart';

import '../../../../../core/utls/colors.dart';
import '../../../../../core/utls/styles.dart';

class OtherDonationTextField extends StatelessWidget {
  const OtherDonationTextField(
      {super.key, this.maxLine, this.onChanged, required this.hintText});
  final int? maxLine;
  final void Function(String)? onChanged;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      textAlign: TextAlign.center,
      textInputAction: TextInputAction.done,
      maxLines: maxLine,
      onChanged: onChanged,
      style: AppStyles.textStyle15,
      cursorColor: AppColors.mainColor,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(vertical: 10.0),
        fillColor: AppColors.mainColor.withOpacity(0.05),
        filled: true,
        hintText: hintText,
        hintStyle: AppStyles.font13LightBlueWeight400,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(
            color: AppColors.lightGrey.withOpacity(0.5),
          ),
        ),
        enabledBorder: inputBorder(),
        focusedBorder: inputBorder(),
        disabledBorder: inputBorder(),
      ),
    );
  }
}

InputBorder inputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(12.0),
    borderSide: const BorderSide(color: AppColors.mainColor, width: 0.5),
  );
}
