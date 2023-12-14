import 'package:aoun_tu/core/utls/colors.dart';
import 'package:aoun_tu/core/utls/text.dart';
import 'package:aoun_tu/features/auth/presentation/view/widgets/button.dart';
import 'package:aoun_tu/features/auth/presentation/view/widgets/field.dart';
import 'package:aoun_tu/features/auth/presentation/view/widgets/logo_widget.dart';
import 'package:aoun_tu/features/auth/presentation/view/widgets/progress_widget.dart';
import 'package:aoun_tu/features/auth/presentation/view/widgets/welcome_widget.dart';
import 'package:flutter/material.dart';

class LoginBody extends StatefulWidget {
  const LoginBody({Key? key}) : super(key: key);

  @override
  State<LoginBody> createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {
  final TextEditingController emailController= TextEditingController();

  @override
  Widget build(BuildContext context) {
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
           child: ProgressWidget(number: 2),
         ),
          const SliverPadding(padding: EdgeInsets.only(
             bottom: 45
         )),
         SliverToBoxAdapter(
           child: CustomTextFormField(
             hintText: AppText.enterYourEmail,
             textEditingController:emailController ,
           ),
         ),
          const SliverPadding(padding: EdgeInsets.only(
             bottom: 45
         )),

          SliverToBoxAdapter(
           child: Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               CustomButton(
                 color:AppColors.mainColor ,
                 txt: AppText.next,
               ),
             ],
           ),
         ),

       ],
      ),
    );
  }
}
