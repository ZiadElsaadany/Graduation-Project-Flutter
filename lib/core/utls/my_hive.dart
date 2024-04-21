import 'package:hive_flutter/adapters.dart';

class AppHive{


 static String tokenAndOnBoardingBox = "tokenAndOnBoardingBox" ;
 static String tokenKey = "token" ;
 static String onBoardingKey = "token" ;
 static String ? tokenValue ;
 static String ? onBoardingValue ;

  Future<void> openBox(  {
 required String boxName
}) async {
   await  Hive.openBox(boxName);
  }
  getBox(
  {
    required String boxName
}
      ){
 return Hive.box(boxName);
}
  putToBox( {
    required String key ,
    required String value,
    required String boxName
}) async {
   await  openBox(boxName: boxName);
    getBox(boxName: boxName).put(key,value);
  }

  getFromBox(
  {

    required String boxName,
    required String key,
  }
      )async {
    await  openBox(boxName: boxName);
return   getBox(boxName: boxName).get(key);
  }

}