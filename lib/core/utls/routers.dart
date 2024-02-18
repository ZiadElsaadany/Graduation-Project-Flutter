

import 'package:aoun_tu/features/auth/presentation/view/login/login_screen.dart';
import 'package:aoun_tu/features/auth/presentation/view/register/register_screen.dart';
import 'package:aoun_tu/features/onboarding/presentation/view_model/onboarding_cubit.dart';
import 'package:aoun_tu/features/splash/presentation/view/splash_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../features/onboarding/presentation/view/onboarding_screen.dart';

abstract class AppRouter  {

  static const kSplash = '/';
  static const kFirstOnBoarding = '/kFirstOnBoarding';
static const kLogin = '/kLogin';
static const kRegister = '/kLogin';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: "/",
        builder: (context, state) => const LoginScreen(),
      ),  GoRoute(
        path:kRegister,
        builder: (context, state) => const RegisterScreen(),
      ),

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
