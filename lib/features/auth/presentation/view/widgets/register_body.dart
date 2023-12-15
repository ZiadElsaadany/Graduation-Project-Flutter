import 'package:aoun_tu/features/auth/presentation/view/widgets/progress_widget_to_register.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utls/text.dart';

import 'fields_on_register.dart';
import 'havent_account_row_widget.dart';
import 'logo_widget.dart';

class RegisterBody extends StatelessWidget {
  const RegisterBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  const Padding(
      padding: EdgeInsets.only(
          left: 20.0,
          right: 20.0,

      ),
      child: CustomScrollView(
        slivers: [
          SliverPadding(padding: EdgeInsets.only(
              top:  103
          )),
          SliverToBoxAdapter(
            child: AuthLogoWidget(),
          ),
          SliverPadding(padding: EdgeInsets.only(
              bottom: 45
          )),
          SliverToBoxAdapter(
            child: ProgressWidgetToRegister(),
          ),
          SliverPadding(padding: EdgeInsets.only(
              bottom: 45
          )),


          FieldsONRegister(),


          SliverPadding(padding: EdgeInsets.only(
              bottom: 45
          )),
           SliverToBoxAdapter(
            child: HaventAccountRowWidget(
              loginOrRegister: LoginOrRegister.REGISTER,

              underLineText: AppText.makeLogin, text: AppText.haveAccount,),
          ),
          SliverPadding(padding: EdgeInsets.only(
              bottom:  103
          )),


        ],
      ),
    );
  }
}
