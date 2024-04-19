import 'package:aoun_tu/core/utls/my_hive.dart';
import 'package:aoun_tu/injection_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'core/utls/routers.dart';
import 'package:flutter/services.dart';

void main() async{

  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
  ));
  setup();

  await Hive.initFlutter();
await   AppHive().getFromBox(boxName:AppHive.tokenBox, key: AppHive.tokenKey);
  runApp(const AounApp());
}

class AounApp extends StatelessWidget {
  const AounApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, context) {
        return MaterialApp.router(
          routerConfig: AppRouter.router,
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}
