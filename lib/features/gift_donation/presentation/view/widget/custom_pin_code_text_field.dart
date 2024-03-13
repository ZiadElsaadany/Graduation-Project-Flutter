import 'dart:async';

import 'package:aoun_tu/core/utls/styles.dart';
import 'package:aoun_tu/features/gift_donation/presentation/view_model/gift_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../../../../core/utls/colors.dart';

class CustomPinCodeTextField extends StatelessWidget {
  CustomPinCodeTextField({Key? key}) : super(key: key);
  final formKey = GlobalKey<FormState>();
  final StreamController<ErrorAnimationType> errorController =
      StreamController<ErrorAnimationType>();
  late final String code;

  @override
  Widget build(BuildContext context) {
    return Form(
        key: formKey,
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: 8,
            horizontal: MediaQuery.of(context).size.width * 0.16,
          ),
          child: PinCodeTextField(
            controller: BlocProvider.of<GiftCubit>(context).pinCodeController,
            appContext: context,
            length: 5,
            errorAnimationController: errorController,
            obscureText: false,
            animationType: AnimationType.scale,
            cursorColor: AppColors.mainColor,
            textStyle: AppStyles.textStyle24bold,
            pinTheme: PinTheme(
              activeColor: AppColors.mainColor,
              inactiveFillColor: AppColors.white,
              selectedColor: AppColors.mainColor.withOpacity(0.5),
              inactiveColor: AppColors.mainColor.withOpacity(0.5),
              shape: PinCodeFieldShape.underline,
              selectedFillColor: AppColors.white,
              activeFillColor: AppColors.white,
            ),
            animationDuration: const Duration(milliseconds: 300),
            enableActiveFill: true,
            onCompleted: (code) {
              this.code = code;
              print("Completed");
            },
            onChanged: (value) {
              // print(value);
              // print(BlocProvider.of<GiftCubit>(context).pinCodeController);
            },
            beforeTextPaste: (text) {
              print("Allowing to paste $text");
              //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
              //but you can show anything you want here, like your pop up saying wrong paste format or etc
              return true;
            },
          ),
        ));
  }
}
