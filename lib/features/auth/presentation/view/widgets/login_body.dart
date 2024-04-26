import 'package:aoun_tu/core/utls/colors.dart';
import 'package:aoun_tu/core/utls/loggers.dart';
import 'package:aoun_tu/core/utls/my_hive.dart';
import 'package:aoun_tu/core/utls/routers.dart';
import 'package:aoun_tu/core/utls/text.dart';
import 'package:aoun_tu/features/auth/presentation/view/widgets/button.dart';
import 'package:aoun_tu/features/auth/presentation/view/widgets/havent_account_row_widget.dart';
import 'package:aoun_tu/features/auth/presentation/view/widgets/logo_widget.dart';
import 'package:aoun_tu/features/auth/presentation/view/widgets/progress_widget_to_login.dart';
import 'package:aoun_tu/features/auth/presentation/view/widgets/welcome_widget.dart';
import 'package:aoun_tu/features/auth/presentation/view_model/login/login_api_states.dart';
import 'package:aoun_tu/features/auth/presentation/view_model/login/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../../../../core/utls/toast.dart';
import '../../view_model/login/login_api_cubit.dart';
import 'email_or_pasword_login.dart';

class LoginBody extends StatefulWidget {
  const LoginBody({Key? key}) : super(key: key);

  @override
  State<LoginBody> createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var cubit = BlocProvider.of<LoginCubit>(context);
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: 20.0),
      child: CustomScrollView(
        slivers: [
          const SliverPadding(padding: EdgeInsets.only(
              top: 103
          )),
          const SliverToBoxAdapter(
            child: AuthLogoWidget(),
          ),
          const SliverPadding(padding: EdgeInsets.only(
              bottom: 45
          )),
          const SliverToBoxAdapter(
            child: WelcomeToWidget(),
          ),
          const SliverPadding(padding: EdgeInsets.only(
              bottom: 35
          )),
          const SliverToBoxAdapter(
            child: ProgressWidgetToLogin(number: 2),
          ),
          const SliverPadding(padding: EdgeInsets.only(
              bottom: 45
          )),

          PasswordOrEmailFields(
              emailController: emailController, passController: passController),
          const SliverPadding(padding: EdgeInsets.only(
              bottom: 45
          )),

          SliverToBoxAdapter(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BlocConsumer<LoginApiCubit, LoginApiStates>(
                  listener: (context, state) {

                    if(state is LoginFailureState) {
                      showToast(title: state.message, color: AppColors.red);
                    }else if(state is LoginSuccessState){
                      GoRouter.of(context).push(AppRouter.kNavBar);
                      showToast(title: "Login Successfully", color: AppColors.green);
                    }

                  },
                  builder: (context, state) {
                    return state is LoginLoadingState ?
                    const CircularProgressIndicator(
                      color: AppColors.mainColor,
                    )
                    : CustomButton(

                      onPressed: () {
                        if (cubit.progressCounter == 1 && emailController.text
                            .trim()
                            .isEmpty) {
                          showToast(
                              color: AppColors.red,
                              title: "Email is Required"
                          );
                        } else if (cubit.progressCounter == 2 && passController.text
                            .trim()
                            .isEmpty) {
                          showToast(
                              color: AppColors.red,
                              title: "Password is Required"
                          );
                        } else if (cubit.progressCounter == 1) {
                          cubit.plusProgressCounter();
                        } else {
                          //login here



                          BlocProvider.of<LoginApiCubit>(context,listen: false).login(email: emailController.text.trim(), password:passController.text.trim());
                        }
                      },
                      color: AppColors.mainColor,
                      txt: AppText.next,
                    );
                  },
                ),
              ],
            ),
          ),
          const SliverPadding(padding: EdgeInsets.only(
              bottom: 45
          )),
          const SliverToBoxAdapter(
            child: HaventAccountRowWidget(

              loginOrRegister: LoginOrRegister.LOGIN,
              underLineText: AppText.makeAccount, text: AppText.haventAccount,),
          ),


        ],
      ),
    );
  }
}


