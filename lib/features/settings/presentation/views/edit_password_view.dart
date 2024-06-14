import 'package:aoun_tu/core/utls/api_service.dart';
import 'package:aoun_tu/features/settings/data/repos/edit_password/edit_password_repo_impl.dart';
import 'package:aoun_tu/features/settings/presentation/view_model/edit_password/edit_password_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'widgets/edit_password_body.dart';

class EditPasswordView extends StatelessWidget {
  const EditPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: BlocProvider(
          create: (context) =>
              EditPasswordCubit(EditPasswordRepoImpl(apiService: ApiService())),
          child: const EditPasswordBody(),
        ),
      ),
    );
  }
}
