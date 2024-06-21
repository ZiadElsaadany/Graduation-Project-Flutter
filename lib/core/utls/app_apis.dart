import 'package:aoun_tu/core/utls/my_hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

class AppApis {
  static const String loginEndPoint = "/api/v1/auth/login";
  static const String registerEndPoint = "/api/v1/auth/user/register";
  static const String getPostsEndPoint = "/api/v1/post";
  static const String likeEndPoint = "/api/v1/like";
  static const String charityEndPoint = '/api/v1/charity';
  static const String homeCampainsEndPoint = '/api/v1/campaign/1';
  static const String editPasswordEndPoint = '/api/v1/user/change-password';
  static String campaignsInCharity(int charityId) =>
      '/api/v1/campaign/$charityId';
  static String categoriesInCharity(int charityId) =>
      '/api/v1/charity-category/$charityId ';

  static String donationCasesInCategory(int categoryId) =>
      '/api/v1/donation-case?categoryId=$categoryId';

  static const String giftCategoryEndPoint = '/api/v1/gift-donation/category';
  static String giftDonationEndPoint = '/api/v1/gift-donation';

  static String bookMarkEndPoint(int postId) =>
      '/api/v1/bookmark?userId=${Hive.box(AppHive.userBox).get(AppHive.idKey)}&postId=$postId';
  static String getBookMarkEndPoint =
      '/api/v1/bookmark/${Hive.box(AppHive.userBox).get(AppHive.idKey)}';
  static String createPost =
      '/api/v1/post';
}
