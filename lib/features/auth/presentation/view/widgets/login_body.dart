import 'package:aoun_tu/features/auth/presentation/view/widgets/logo_widget.dart';
import 'package:aoun_tu/features/auth/presentation/view/widgets/progress_widget.dart';
import 'package:aoun_tu/features/auth/presentation/view/widgets/welcome_widget.dart';
import 'package:flutter/material.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
     slivers: [
       SliverPadding(padding: EdgeInsets.only(
         top:  103
       )),
       SliverToBoxAdapter(
         child: AuthLogoWidget(),
       ),
       SliverPadding(padding: EdgeInsets.symmetric(
           vertical: 30
       )),
       SliverToBoxAdapter(
         child: WelcomeToWidget(),
       ),
       SliverPadding(padding: EdgeInsets.symmetric(
           vertical: 30
       )),
       SliverToBoxAdapter(
         child: ProgressWidget(number: 2),
       ),


     ],
    );
  }
}
