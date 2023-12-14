

import 'package:aoun_tu/features/splash/presentation/view/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter  {

  static const kSplash = '/';
  static const kFirstOnBoarding = '/';

  static final router = GoRouter(

    routes: [
      GoRoute(
        path: kSplash,
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kFirstOnBoarding,
        builder: (context, state) => const SplashView(),
      ),

    ],
  );
}