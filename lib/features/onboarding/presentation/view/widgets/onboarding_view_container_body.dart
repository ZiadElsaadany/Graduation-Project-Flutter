import 'package:aoun_tu/features/onboarding/presentation/view/widgets/smooth_page_indicator.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utls/colors.dart';
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
      children: [
        Text(
          title,
          style: AppStyles.textStyle20
              .copyWith(color: AppColors.white, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.035,
        ),
        Text(
          description,
          style: AppStyles.textStyle14.copyWith(color: AppColors.white),
          textAlign: TextAlign.center,
        ),
        const Spacer(),
        Row(
          children: [
            Column(
              children: [
                const CustomSmoothPAgeIndicator(),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.017,
                ),
                Text(
                  AppText.skip,
                  style: AppStyles.textStyle17.copyWith(
                      color: AppColors.white, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
              ],
            )
          ],
        )
      ],
    );
  }
}
