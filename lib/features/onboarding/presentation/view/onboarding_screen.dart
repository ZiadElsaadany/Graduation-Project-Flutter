import 'package:aoun_tu/core/utls/colors.dart';
import 'package:aoun_tu/core/utls/images.dart';
import 'package:aoun_tu/core/utls/styles.dart';
import 'package:aoun_tu/core/utls/text.dart';
import 'package:flutter/material.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({Key? key}) : super(key: key);

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  PageController _pageController = PageController();
  List<Map<String, String>> onBoardingData = [
    {
      'title': AppText.donate,
      'description':
          'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.',
      'image': AppImages.firstOnBoarding, // Replace with your image asset
    },
    {
      'title': AppText.clothsDonate,
      'description':
          'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.',
      'image': AppImages.secOnBoarding, // Replace with your image asset
    },
    {
      'title': AppText.foodDonate,
      'description':
          'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.',
      'image': AppImages.thirdOnBoarding, // Replace with your image asset
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: PageView.builder(
          itemBuilder: (context, index) {
            return OnboardingScreen(
              title: onBoardingData[index]['title']!,
              description: onBoardingData[index]['description']!,
              image: onBoardingData[index]['image']!,
            );
          },
          controller: _pageController,
          itemCount: onBoardingData.length,
        ),
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
          child: Container(
            padding:
                const EdgeInsets.only(top: 39, bottom: 80, right: 24, left: 24),
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
                  style: AppStyles.textStyle13.copyWith(color: AppColors.white),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 86,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
