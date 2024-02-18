import 'package:aoun_tu/core/utls/colors.dart';
import 'package:aoun_tu/features/onboarding/presentation/view/widgets/onboarding_view_body.dart';
import 'package:aoun_tu/features/onboarding/presentation/view_model/onboarding_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({Key? key}) : super(key: key);

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
       create: (c)=>OnBoardingCubit(),
      child: const Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          backgroundColor: AppColors.white,
          body:OnBoardingBody(),
        ),
      ),
    );
  }
}

class OnBoardingBody extends StatefulWidget {
  const OnBoardingBody({Key? key}) : super(key: key);

  @override
  State<OnBoardingBody> createState() => _OnBoardingBodyState();
}

class _OnBoardingBodyState extends State<OnBoardingBody> {

  @override
  void dispose() {
    super.dispose();
if(context.mounted) {
  BlocProvider.of<OnBoardingCubit>(context).pageController.dispose();

}
  }
  @override
  Widget build(BuildContext context) {
    var onBoardingCubit=BlocProvider.of<OnBoardingCubit>(context);
    return PageView.builder(
      itemBuilder: (context, index) {
        return OnBoardingViewBody(
          title: onBoardingCubit
              .onBoardingData[index]['title']!,
          description: onBoardingCubit
              .onBoardingData[index]['description']!,
          image: BlocProvider
              .of<OnBoardingCubit>(context)
              .onBoardingData[index]['image']!,
        );
      },
      controller:
      onBoardingCubit.pageController,
      onPageChanged: (c){
        onBoardingCubit.getCurrentPageViewIndex(c);

      },
      itemCount: BlocProvider
          .of<OnBoardingCubit>(context)
          .onBoardingData
          .length,
      // physics: const NeverScrollableScrollPhysics(),

    );
  }
}
