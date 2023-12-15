import 'package:aoun_tu/core/utls/colors.dart';
import 'package:aoun_tu/features/onboarding/presentation/view/widgets/onboarding_view_body.dart';
import 'package:aoun_tu/features/onboarding/presentation/view_model/onboarding_cubit.dart';
import 'package:aoun_tu/features/onboarding/presentation/view_model/onboarding_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({Key? key}) : super(key: key);

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  @override
  void dispose() {
    super.dispose();
    BlocProvider.of<OnBoardingCubit>(context).pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: BlocBuilder<OnBoardingCubit, OnBoardingState>(
        builder: (context, state) {
          return Scaffold(
            backgroundColor: AppColors.mainColor,
            body: PageView.builder(
              itemBuilder: (context, index) {
                return OnBoardingViewBody(
                  title: BlocProvider.of<OnBoardingCubit>(context)
                      .onBoardingData[index]['title']!,
                  description: BlocProvider.of<OnBoardingCubit>(context)
                      .onBoardingData[index]['description']!,
                  image: BlocProvider.of<OnBoardingCubit>(context)
                      .onBoardingData[index]['image']!,
                );
              },
              controller:
                  BlocProvider.of<OnBoardingCubit>(context).pageController,
              itemCount: BlocProvider.of<OnBoardingCubit>(context)
                  .onBoardingData
                  .length,
            ),
          );
        },
      ),
    );
  }
}
