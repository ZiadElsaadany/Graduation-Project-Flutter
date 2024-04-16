import 'package:aoun_tu/features/onboarding/data/on_boarding_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../../../core/utls/colors.dart';
import '../../view_model/onboarding_cubit.dart';

class CustomSmoothPAgeIndicator extends StatefulWidget {
  const CustomSmoothPAgeIndicator({Key? key}) : super(key: key);

  @override
  State<CustomSmoothPAgeIndicator> createState() =>
      _CustomSmoothPAgeIndicatorState();
}

class _CustomSmoothPAgeIndicatorState extends State<CustomSmoothPAgeIndicator> {

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: BlocProvider.of<OnBoardingCubit>(context).pageController,
      count:pages.length,
      effect: ExpandingDotsEffect(
        dotColor: AppColors.white.withOpacity(0.4),
        activeDotColor: AppColors.white,
        dotHeight: MediaQuery.of(context).size.height * 0.0072,
        dotWidth: MediaQuery.of(context).size.width * 0.0172,
        offset: 40,
        spacing: 6,
      ),
      // onDotClicked: (index) => BlocProvider.of<OnBoardingCubit>(context)
      //     .pageController
      //     .animateToPage(index,
      //         duration: const Duration(seconds: 1 ), curve: Curves.easeIn),
    );
  }
}
