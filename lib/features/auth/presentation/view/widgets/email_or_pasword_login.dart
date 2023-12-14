import 'package:aoun_tu/features/auth/presentation/view_model/login/login_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/utls/images.dart';
import '../../../../../core/utls/text.dart';
import '../../view_model/login/login_cubit.dart';
import 'field.dart';

class PasswordOrEmailFields extends StatelessWidget {
  const PasswordOrEmailFields(
      {Key? key, required this.emailController, required this.passController})
      : super(key: key);

  final TextEditingController emailController;
  final TextEditingController passController;
  @override
  Widget build(BuildContext context) {
    var cubit = BlocProvider.of<LoginCubit>(context);

    return BlocBuilder<LoginCubit, LoginStates>(
        builder: (c, state) {
      return cubit.progressCounter == 1
          ? SliverToBoxAdapter(
              child: CustomTextFormField(
                iconImage: AppImages.emailIcon,
                hintText: AppText.enterYourEmail,
                textEditingController: emailController,
              ),
            )
          : SliverToBoxAdapter(
              child: CustomTextFormField(
                iconImage: AppImages.passwordIcon,

                secure: true,
                obscureText: cubit.secure,
                secureWidget: IconButton(
                  icon: SvgPicture.asset(cubit.secure
                      ? AppImages.visibleEye
                      : AppImages.notVisibleEye),
                  onPressed: () {
                    cubit.changeSecureLogin();
                  },
                ),
                hintText: AppText.enterYourPassword,
                textEditingController: passController,
              ),
            );
    });
  }
}
