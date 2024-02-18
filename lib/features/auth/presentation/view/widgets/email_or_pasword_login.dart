import 'package:animate_do/animate_do.dart';
import 'package:aoun_tu/features/auth/presentation/view_model/login/login_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/utls/images.dart';
import '../../../../../core/utls/text.dart';
import '../../view_model/login/login_cubit.dart';
import 'field.dart';

class PasswordOrEmailFields extends StatefulWidget {
  const PasswordOrEmailFields(
      {Key? key, required this.emailController, required this.passController})
      : super(key: key);

  final TextEditingController emailController;
  final TextEditingController passController;

  @override
  State<PasswordOrEmailFields> createState() => _PasswordOrEmailFieldsState();
}

class _PasswordOrEmailFieldsState extends State<PasswordOrEmailFields> {

  @override
  Widget build(BuildContext context) {
    var cubit = BlocProvider.of<LoginCubit>(context);

    return BlocBuilder<LoginCubit, LoginStates>(
        builder: (c, state) {

      return SliverToBoxAdapter(
        child: cubit.progressCounter == 1
            ? FadeInRight(
          duration: const Duration(
              milliseconds: 700
          ),
              child: CustomTextFormField(
          key: const ValueKey<int>(1),
          iconImage: AppImages.emailIcon,
          hintText: AppText.enterYourEmail,
          textEditingController: widget.emailController,
        ),
            )
            : FadeInLeft(
          duration: const Duration(
              milliseconds: 700
          ),
              child: CustomTextFormField(
          key: const ValueKey<int>(2),
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
          textEditingController: widget.passController,
        ),
            ),
      );
    });
  }
}
