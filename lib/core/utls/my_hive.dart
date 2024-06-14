import 'package:hive_flutter/adapters.dart';

class AppHive {
  static String tokenAndOnBoardingBox = "tokenAndOnBoardingBox";
  static String tokenKey = "token";
  static String onBoardingKey = "onBoardingKey";
  static String userBox = "userKey";
  static String emailKey = "emailKey";
  static const String nameKey = "nameKey";
  static const String phoneKey = "phoneKey";
  static const String imageKey = "userImageKey";
  static const String genderKey = "genderKey";
  static const String idKey = "idKey";

  Future<void> openBox({required String boxName}) async {
    await Hive.openBox(boxName);
  }

  getBox({required String boxName}) {
    return Hive.box(boxName);
  }

  putToBox(
      {required String key,
      required String value,
      required String boxName}) async {
    await openBox(boxName: boxName);
    getBox(boxName: boxName).put(key, value);
  }

  getFromBox({
    required String boxName,
    required String key,
  }) async {
    await openBox(boxName: boxName);
    return getBox(boxName: boxName).get(key);
  }

  static String? getToken() {
    return Hive.box(tokenAndOnBoardingBox).get(tokenKey);
  }

  static bool? onBoarding() {
    return Hive.box(tokenAndOnBoardingBox).get(onBoardingKey);
  }

  static Future<void> removeToken() async {
    await Hive.box(tokenAndOnBoardingBox).put(tokenKey, null);
  }
}
