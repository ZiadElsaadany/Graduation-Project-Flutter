import 'package:aoun_tu/core/utls/colors.dart';
import 'package:aoun_tu/features/onboarding/presentation/view/widgets/on_boarding_body.dart';
import 'package:aoun_tu/features/onboarding/presentation/view_model/onboarding_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../injection_container.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (c) => serviceLocator<OnBoardingCubit>(),
      child: const Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          backgroundColor: AppColors.white,
          body: OnBoardingBody(),
        ),
      ),
    );
  }
}



