import 'package:aoun_tu/features/settings/presentation/views/widgets/saveChangeButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../../../../core/utls/my_hive.dart';
import '../../../../../core/utls/spacing.dart';
import '../../../../../core/utls/text.dart';
import '../../../../../core/utls/validator.dart';
import '../../view_model/personal_info/personal_info_cubit.dart';
import 'personal_info_app_bar.dart';
import 'personal_info_text_form_field.dart';

class PersonalInfoBody extends StatelessWidget {
  const PersonalInfoBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PersonalInfoCubit, PersonalInfoState>(
      builder: (context, state) {
        var cubit = context.read<PersonalInfoCubit>();
        return Form(
          key: cubit.personalInfoFormKey,
          autovalidateMode: cubit.autovalidateMode,
          child: Stack(
            children: [
              SafeArea(
                  child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    const PersonalInfoAppBar(),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.w),
                      child: Column(
                        children: [
                          verticalSpace(24),
                          PersonalInfoTextFormField(
                            lable: AppText.phoneNumber,
                            initialValue:
                                Hive.box(AppHive.userBox).get(AppHive.phoneKey),
                            keyboardType: TextInputType.number,
                            hintText: AppText.enterPhone,
                            validator: (value) {
                              return Validator.validatePhone(value);
                            },
                          ),
                          verticalSpace(40),
                          PersonalInfoTextFormField(
                            lable: AppText.email,
                            initialValue:
                                Hive.box(AppHive.userBox).get(AppHive.emailKey),
                            keyboardType: TextInputType.emailAddress,
                            hintText: AppText.enterYourEmail,
                            validator: (value) {
                              return Validator.validateEmail(value);
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )),
              Align(
                  alignment: Alignment.bottomCenter,
                  child: SaveChangesButton(onTap: () {
                    if (cubit.personalInfoFormKey.currentState!.validate()) {
                      cubit.personalInfoFormKey.currentState!.save();
                    } else {
                      cubit.autovalidateMode = AutovalidateMode.always;
                    }
                  })),
            ],
          ),
        );
      },
    );
  }
}
