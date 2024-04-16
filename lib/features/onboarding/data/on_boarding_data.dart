import '../../../core/utls/images.dart';
import '../../../core/utls/text.dart';

class OnBoardingData {
  final String title;
  final String description;
  final String image;
  final bool skip;

  OnBoardingData(this.title, this.description, this.image, this.skip);
}

List<OnBoardingData> pages = [
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

