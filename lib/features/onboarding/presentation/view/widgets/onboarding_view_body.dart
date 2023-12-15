import 'package:aoun_tu/features/onboarding/presentation/view/widgets/onboarding_view_container.dart';
import 'package:aoun_tu/features/onboarding/presentation/view/widgets/onboarding_view_image.dart';
import 'package:flutter/material.dart';

class OnBoardingViewBody extends StatelessWidget {
  final String title;
  final String description;
  final String image;

  const OnBoardingViewBody({
    super.key,
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
            child: OnBoardingViewContainer(
              title: title,
              description: description,
            )),
      ],
    );
  }
}
