import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../view_model/onboarding_cubit.dart';
import 'onboarding_view_body.dart';

class OnBoardingBody extends StatefulWidget {
  const OnBoardingBody({Key? key}) : super(key: key);

  @override
  State<OnBoardingBody> createState() => _OnBoardingBodyState();
}

class _OnBoardingBodyState extends State<OnBoardingBody> {
  @override
  void dispose() {
    if (context.mounted) {
      BlocProvider.of<OnBoardingCubit>(context).pageController.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var onBoardingCubit = BlocProvider.of<OnBoardingCubit>(context);
    return PageView.builder(
      itemBuilder: (context, index) {
        return OnBoardingViewBody(index: index);
      },
      controller: onBoardingCubit.pageController,
      onPageChanged: (c) {
        onBoardingCubit.getCurrentPageViewIndex(c);
      },
      itemCount:3,
    );
  }
}
