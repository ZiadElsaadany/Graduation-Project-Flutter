import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/utls/images.dart';
import '../../../../core/utls/text.dart';
import 'onboarding_state.dart';

class OnBoardingCubit extends Cubit<OnBoardingState> {
  OnBoardingCubit() : super(OnBoardingInitial());

  final PageController pageController = PageController();
  List<Map<String, String>> onBoardingData = [
    {
      'title': AppText.donate,
      'description':
          'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.',
      'image': AppImages.onBoarding1, // Replace with your image asset
    },
    {
      'title': AppText.clothsDonate,
      'description':
          'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.',
      'image': AppImages.onBoarding2, // Replace with your image asset
    },
    {
      'title': AppText.foodDonate,
      'description':
          'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.',
      'image': AppImages.onBoarding3, // Replace with your image asset
    },
  ];

  int currentPage = 0 ;
  getCurrentPageViewIndex(c){
    currentPage=c;
    emit(ChangePageCounterState());
  }
}
