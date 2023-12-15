import 'package:aoun_tu/features/onboarding/presentation/view/widgets/onboarding_view_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../../core/utls/colors.dart';
import '../../../../../core/utls/styles.dart';
import '../../../../../core/utls/text.dart';
import '../../view_model/onboarding_cubit.dart';
import '../../view_model/onboarding_state.dart';
class OnBoardingViewBody extends StatelessWidget {
  final String title;
  final String description;
  final String image;

  const OnBoardingViewBody({super.key,
    required this.title,
    required this.description,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 60,
          child: OnBoardingViewImage(image: image),
        ),
        Expanded(
          flex: 40,
          child: BlocBuilder<OnBoardingCubit, OnBoardingState>(
            builder: (context, state) {
              return Container(
                transform:  Matrix4.translationValues(0, MediaQuery.of(context).size.height*-0.075, 0),
                padding:  EdgeInsets.only(
                    top: MediaQuery.of(context).size.height*0.04, bottom: 0, right: MediaQuery.of(context).size.width*0.03 , left: MediaQuery.of(context).size.width*0.03 ),
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
                    Spacer(),
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
                            const SizedBox(
                              height: 17,
                            ),
                            Text(
                              AppText.skip,
                              style: AppStyles.textStyle17.copyWith(
                                  color: AppColors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 17,
                            ),
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
