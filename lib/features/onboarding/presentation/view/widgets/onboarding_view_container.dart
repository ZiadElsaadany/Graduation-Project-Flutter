import 'package:aoun_tu/features/onboarding/presentation/view/widgets/onboarding_view_container_body.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utls/colors.dart';

class OnBoardingViewContainer extends StatelessWidget {
  const OnBoardingViewContainer(
      {Key? key, required this.title, required this.description})
      : super(key: key);
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
          top: MediaQuery.of(context).size.height * 0.04,
          bottom: 0,
          right: MediaQuery.of(context).size.width * 0.045,
          left: MediaQuery.of(context).size.width * 0.045),
      decoration: const BoxDecoration(
          color: AppColors.mainColor,
          borderRadius: BorderRadiusDirectional.only(
              topStart: Radius.circular(30), topEnd: Radius.circular(30))),
      child: OnBoardingViewContainerBody(
        title: title,
        description: description,
      ),
    );
  }
}
