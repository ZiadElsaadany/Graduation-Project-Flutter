import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../view_model/personal_info/personal_info_cubit.dart';
import '../view_model/personal_info/personal_info_cubit.dart';
import 'widgets/personal_info_body.dart';

class PersonalInfoView extends StatelessWidget {
  const PersonalInfoView({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: BlocProvider(
          create: (context) => PersonalInfoCubit(),
          child: const PersonalInfoBody(),
        ),
      ),
    );
  }
}
