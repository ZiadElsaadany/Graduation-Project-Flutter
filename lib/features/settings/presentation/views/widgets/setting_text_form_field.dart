import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/utls/colors.dart';
import '../../../../../core/utls/images.dart';
import '../../../../../core/utls/styles.dart';

class SettingTextFormField extends StatefulWidget {
  const SettingTextFormField({
    super.key,
    required this.lable,
    this.initialValue,
    this.keyboardType,
    this.hintText,
    this.secure = false,
    this.validator,
    this.suffixIcon = false,
    this.controller,
  });
  final String lable;
  final bool secure;
  final bool? suffixIcon;
  final String? initialValue;
  final TextInputType? keyboardType;
  final String? hintText;
  final String? Function(String?)? validator;
  final TextEditingController? controller;

  @override
  State<SettingTextFormField> createState() => _SettingTextFormFieldState();
}

class _SettingTextFormFieldState extends State<SettingTextFormField> {
  bool? _showPassword;
  @override
  void initState() {
    super.initState();
    _showPassword = widget.secure;
  }

  @override
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.lable,
          style: AppStyles.font14LightGreyBold.copyWith(color: AppColors.text1),
        ),
        TextFormField(
          cursorColor: AppColors.mainColor,
          obscureText: _showPassword!,
          controller: widget.controller,
          validator: widget.validator,
          initialValue: widget.initialValue,
          style: AppStyles.font16BlueBold
              .copyWith(fontWeight: FontWeight.w400, color: AppColors.text3),
          keyboardType: widget.keyboardType,
          decoration: InputDecoration(
            hintText: widget.hintText,
            hintStyle: AppStyles.font11DarkBlueWeight400.copyWith(
              color: AppColors.text2,
            ),
            suffixIcon: widget.suffixIcon == true
                ? IconButton(
                    padding: const EdgeInsets.all(0),
                    icon: SvgPicture.asset(_showPassword!
                        ? AppImages.notVisibleEye
                        : AppImages.visibleEye),
                    onPressed: () =>
                        setState(() => _showPassword = !_showPassword!),
                  )
                : null,
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
