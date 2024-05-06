import 'package:animate_do/animate_do.dart';
import 'package:aoun_tu/core/utls/loggers.dart';
import 'package:aoun_tu/core/utls/routers.dart';
import 'package:aoun_tu/features/onboarding/presentation/view/widgets/smooth_page_indicator.dart';
import 'package:aoun_tu/features/onboarding/presentation/view_model/onboarding_cubit.dart';
import 'package:aoun_tu/features/onboarding/presentation/view_model/onboarding_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:hive_flutter/hive_flutter.dart';
import '../../../../../core/utls/colors.dart';
import '../../../../../core/utls/my_hive.dart';
import '../../../../../core/utls/styles.dart';
import '../../../../../core/utls/text.dart';

class OnBoardingViewContainerBody extends StatelessWidget {
  const OnBoardingViewContainerBody(
      {Key? key, required this.title, required this.description})
      : super(key: key);
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            FadeInRight(
              duration: const Duration(seconds: 1),
              child: Text(
                title,
                style: AppStyles.textStyle20.copyWith(
                    color: AppColors.white, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            FadeInLeft(
              child: Text(
                description,
                style: AppStyles.textStyle14.copyWith(color: AppColors.white),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
        BlocBuilder<OnBoardingCubit, OnBoardingState>(
          builder: (context, state) {
            return Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        const CustomSmoothPAgeIndicator(),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.017,
                        ),
                        GestureDetector(
                          onTap: ( ) async{
                        await    Hive.box(AppHive.tokenAndOnBoardingBox).put(AppHive.onBoardingKey, true);

                            AppLogger.print(AppHive.onBoarding().toString());
                           if(context.mounted){
                             GoRouter.of(context)
                                 .pushReplacement(AppRouter.kLogin);
                           }
                          } ,
                          child: Text(
                            AppText.skip,
                            style: AppStyles.textStyle17.copyWith(
                                color: AppColors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                      ],
                    ),
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        SizedBox(
                          width: 55,
                          height: 55,
                          child: CircularProgressIndicator(
                            value: 1.0,
                            valueColor: AlwaysStoppedAnimation<Color>(
                                AppColors.white.withOpacity(0.5)),
                          ),
                        ),
                        SizedBox(
                          width: 55,
                          height: 55,
                          child: CircularProgressIndicator(
                            value: (BlocProvider.of<OnBoardingCubit>(context)
                                        .currentPage +
                                    1) /
                                3,
                            valueColor: const AlwaysStoppedAnimation<Color>(
                                AppColors.white),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            if (BlocProvider.of<OnBoardingCubit>(context)
                                    .currentPage <
                                2) {
                              BlocProvider.of<OnBoardingCubit>(context)
                                  .getCurrentPageViewIndex(
                                      ++BlocProvider.of<OnBoardingCubit>(
                                              context)
                                          .currentPage);
                              BlocProvider.of<OnBoardingCubit>(context)
                                  .pageController
                                  .animateToPage(
                                    BlocProvider.of<OnBoardingCubit>(context)
                                        .currentPage,
                                    curve: Curves.decelerate,
                                    duration: const Duration(seconds: 1),
                                  );
                            } else {
                              Hive.box(AppHive.tokenAndOnBoardingBox).put(AppHive.onBoardingKey, true);

                              GoRouter.of(context)
                                  .pushReplacement(AppRouter.kLogin);
                            }
                          },
                          child: const CircleAvatar(
                            backgroundColor: AppColors.white,
                            child: Icon(
                              Icons.arrow_forward_ios_rounded,
                              color: AppColors.mainColor,
                              size: 20,
                              weight: 100,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 30,
                )
              ],
            );
          },
        ),
      ],
    );
  }
}
