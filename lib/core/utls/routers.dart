import 'package:aoun_tu/features/onboarding/presentation/view_model/onboarding_cubit.dart';
import 'package:aoun_tu/features/splash/presentation/view/splash_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../features/onboarding/presentation/view/onboarding_screen.dart';

abstract class AppRouter {
  static const kSplash = '/';
  static const kFirstOnBoarding = '/kFirstOnBoarding';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: kSplash,
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kFirstOnBoarding,
        builder: (context, state) => BlocProvider<OnBoardingCubit>(
            create: (context) => OnBoardingCubit(),
            child: const OnBoardingView()),
      ),
    ],
  );
}
