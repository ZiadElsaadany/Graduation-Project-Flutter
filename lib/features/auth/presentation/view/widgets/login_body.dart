import 'package:aoun_tu/core/utls/colors.dart';
import 'package:aoun_tu/core/utls/text.dart';
import 'package:aoun_tu/features/auth/presentation/view/widgets/button.dart';
import 'package:aoun_tu/features/auth/presentation/view/widgets/havent_account_row_widget.dart';
import 'package:aoun_tu/features/auth/presentation/view/widgets/logo_widget.dart';
import 'package:aoun_tu/features/auth/presentation/view/widgets/progress_widget_to_login.dart';
import 'package:aoun_tu/features/auth/presentation/view/widgets/welcome_widget.dart';
import 'package:aoun_tu/features/auth/presentation/view_model/login/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'email_or_pasword_login.dart';

class LoginBody extends StatefulWidget {
  const LoginBody({Key? key}) : super(key: key);

  @override
  State<LoginBody> createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {
  final TextEditingController emailController= TextEditingController();
  final TextEditingController passController= TextEditingController();

  @override
  Widget build(BuildContext context) {
    var cubit  = BlocProvider.of<LoginCubit>(context);
    return  Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: 20.0),
      child: CustomScrollView(
       slivers: [
         const SliverPadding(padding: EdgeInsets.only(
           top:  103
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

        PasswordOrEmailFields(emailController: emailController, passController: passController) ,
          const SliverPadding(padding: EdgeInsets.only(
             bottom: 45
         )),

          SliverToBoxAdapter(
           child: Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               CustomButton(

                 onPressed: (  )  {
                   cubit.plusProgressCounter();
                 },
                 color:AppColors.mainColor ,
                 txt: AppText.next,
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


