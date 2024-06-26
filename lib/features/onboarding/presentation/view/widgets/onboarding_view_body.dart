import 'package:flutter/material.dart';
import 'package:aoun_tu/features/onboarding/presentation/view/widgets/onboarding_view_container.dart';
import 'package:aoun_tu/features/onboarding/presentation/view/widgets/onboarding_view_image.dart';
import '../../../../../core/utls/images.dart';
import '../../../../../core/utls/text.dart';
import '../../../data/on_boarding_data.dart';

class OnBoardingViewBody extends StatelessWidget {
  OnBoardingViewBody({
    super.key,
    required this.index,
  });

  final int index;

  final List<OnBoardingData> _pages = [
    OnBoardingData(
        AppText.donate,
        'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها',
        AppImages.onBoarding1,
        true),
    OnBoardingData(
        AppText.clothsDonate,
        'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها',
        AppImages.onBoarding2,
        true),
    OnBoardingData(
        AppText.foodDonate,
        'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها',
        AppImages.onBoarding3,
        true),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            flex: 50, child: OnBoardingViewImage(image: _pages[index].image)),
        Expanded(
          flex: 43,
          child: OnBoardingViewContainer(
            title: _pages[index].title,
            description: _pages[index].description,
          ),
        ),
      ],
    );
  }
}
