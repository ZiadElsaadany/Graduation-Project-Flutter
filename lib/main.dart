import 'package:aoun_tu/core/utls/my_hive.dart';
import 'package:aoun_tu/features/posts/data/repos/posts_repo_implementation.dart';
import 'package:aoun_tu/features/posts/presentation/controller/get_posts_controller/get_posts_cubit.dart';
import 'package:aoun_tu/injection_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'core/utls/loggers.dart';
import 'core/utls/routers.dart';
import 'package:flutter/services.dart';

import 'features/posts/presentation/controller/like_controller/like_cubit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();

  await Hive.initFlutter();
  await Hive.openBox(AppHive.tokenAndOnBoardingBox);
  await Hive.openBox(AppHive.userBox);
  AppLogger.print("token: ${AppHive.getToken()}");
  // Hive.box(AppHive.tokenAndOnBoardingBox).put(AppHive.tokenKey, null);
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
  ));
  setup();

  runApp(MultiBlocProvider(providers: [
    BlocProvider(
        create: (c) => GetPostsCubit(
            postsRepo: serviceLocator<PostsRepoImplementation>())),
    BlocProvider(
        create: (c) =>
            LikeCubit(postsRepo: serviceLocator<PostsRepoImplementation>())),
  ], child: const AounApp()));
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

class MyBlocObserver extends BlocObserver {
  @override
  void onCreate(BlocBase bloc) {
    super.onCreate(bloc);
    print('onCreate -- ${bloc.runtimeType}');
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    print('onChange -- ${bloc.runtimeType}, $change');
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    print('onError -- ${bloc.runtimeType}, $error');
    super.onError(bloc, error, stackTrace);
  }

  @override
  void onClose(BlocBase bloc) {
    super.onClose(bloc);
    print('onClose -- ${bloc.runtimeType}');
  }
}
