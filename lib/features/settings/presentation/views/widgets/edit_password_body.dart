import 'package:aoun_tu/features/settings/presentation/views/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utls/spacing.dart';
import '../../../../../core/utls/text.dart';
import '../../../../../core/utls/toast.dart';
import '../../../../../core/utls/validator.dart';
import '../../view_model/edit_password/edit_password_cubit.dart';
import 'edit_password_button.dart';
import 'setting_text_form_field.dart';

class EditPasswordBody extends StatelessWidget {
  const EditPasswordBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<EditPasswordCubit, EditPasswordState>(
      listener: (context, state) {
        if (state is EditPasswordSuccess) {
          showToast(
              title: AppText.passwordChangeSuccessfully, color: Colors.green);
          GoRouter.of(context).pop(context);
        } else if (state is EditPasswordError) {
          showToast(title: state.error, color: Colors.red);
        }
      },
      builder: (context, state) {
        var cubit = context.read<EditPasswordCubit>();
        return Form(
          key: cubit.editPasswordFormKey,
          autovalidateMode: cubit.autovalidateMode,
          child: Stack(
            children: [
              SafeArea(
                  child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    const CustomAppBar(
                      text: AppText.editPassword,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.w),
                      child: Column(
                        children: [
                          verticalSpace(24),
                          SettingTextFormField(
                            lable: AppText.email,
                            keyboardType: TextInputType.emailAddress,
                            hintText: AppText.enterYourEmail,
                            controller: cubit.email,
                            suffixIcon: true,
                            validator: (value) {
                              return Validator.validateEmail(value);
                            },
                          ),
                          verticalSpace(40),
                          SettingTextFormField(
                            lable: AppText.newPassword,
                            controller: cubit.newPassword,
                            keyboardType: TextInputType.visiblePassword,
                            hintText: AppText.enterYourPassword,
                            suffixIcon: true,
                            validator: (value) {
                              return Validator.validatePassword(value);
                            },
                          ),
                          verticalSpace(40),
                          SettingTextFormField(
                            lable: AppText.comfirmNewPassword,
                            suffixIcon: true,
                            controller: cubit.comfirmNewPassword,
                            keyboardType: TextInputType.visiblePassword,
                            hintText: AppText.enterYourPassword,
                            validator: (value) {
                              if (value!.isEmpty) return AppText.requiredField;
                              if (value != cubit.newPassword.text) {
                                return AppText.passwordDoesnotMatch;
                              } else {
                                return null;
                              }
                            },
                          ),
                          verticalSpace(160),
                        ],
                      ),
                    ),
                  ],
                ),
              )),
              Align(
                  alignment: Alignment.bottomCenter,
                  child: EditPasswordButton(onTap: () {
                    cubit.editPassword();
                  })),
            ],
          ),
        );
      },
    );
  }
}
