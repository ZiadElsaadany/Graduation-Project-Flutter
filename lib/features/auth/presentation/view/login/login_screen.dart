import 'package:aoun_tu/features/auth/presentation/view_model/login/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../widgets/login_body.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Directionality(
       textDirection: TextDirection.rtl,

      child: Scaffold(

        body: BlocProvider(
          create:           (c)=>LoginCubit(),
            child: LoginBody()),
      ),
    );
  }
}
