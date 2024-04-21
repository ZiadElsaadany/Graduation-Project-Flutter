import 'package:flutter/foundation.dart';

class AppLogger {
  static log ( message) {
    if(!kReleaseMode){
      print(message.toString());
    }
  }
}