import 'package:aoun_tu/core/utls/colors.dart';
import 'package:aoun_tu/core/utls/styles.dart';
import 'package:aoun_tu/features/onboarding/presentation/view_model/onboarding_cubit.dart';
import 'package:aoun_tu/features/onboarding/presentation/view_model/onboarding_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

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
            body: PageView.builder(
              itemBuilder: (context, index) {
                return OnboardingScreen(
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

class OnboardingScreen extends StatelessWidget {
  final String title;
  final String description;
  final String image;

  const OnboardingScreen({
    required this.title,
    required this.description,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 4,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.1),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.23,
                child: AspectRatio(
                  aspectRatio: 3.5 / 5.5,
                  child: Image.asset(image),
                ),
              )
            ],
          ),
        ),
        Expanded(
          flex: 3,
          child: BlocBuilder<OnBoardingCubit, OnBoardingState>(
            builder: (context, state) {
              return Container(
                padding: const EdgeInsets.only(
                    top: 39, bottom: 80, right: 24, left: 24),
                decoration: const BoxDecoration(
                    color: AppColors.mainColor,
                    borderRadius: BorderRadiusDirectional.only(
                        topStart: Radius.circular(30),
                        topEnd: Radius.circular(30))),
                child: Column(
                  children: [
                    Text(
                      title,
                      style: AppStyles.textStyle20.copyWith(
                          color: AppColors.white, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 35,
                    ),
                    Text(
                      description,
                      style: AppStyles.textStyle13
                          .copyWith(color: AppColors.white),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 86,
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            SmoothPageIndicator(
                                controller:
                                    BlocProvider.of<OnBoardingCubit>(context)
                                        .pageController,
                                count: BlocProvider.of<OnBoardingCubit>(context)
                                    .onBoardingData
                                    .length,
                                effect: ExpandingDotsEffect(
                                  dotColor: AppColors.white.withOpacity(0.4),
                                  activeDotColor: AppColors.white,
                                  dotHeight:
                                      MediaQuery.of(context).size.height *
                                          0.0072,
                                  dotWidth: MediaQuery.of(context).size.width *
                                      0.0172,
                                  offset: 40,
                                  spacing: 6,
                                )),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
