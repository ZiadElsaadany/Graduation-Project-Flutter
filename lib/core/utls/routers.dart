import 'package:aoun_tu/features/charity/presentation/view/charity_view.dart';
import 'package:aoun_tu/features/home/presentation/view/home_screen.dart';
import 'package:aoun_tu/features/posts/presentation/view/posts_screen.dart';


import 'package:aoun_tu/features/auth/presentation/view/login/login_screen.dart';
import 'package:aoun_tu/features/auth/presentation/view/register/register_screen.dart';
import 'package:aoun_tu/features/onboarding/presentation/view_model/onboarding_cubit.dart';
import 'package:aoun_tu/features/splash/presentation/view/splash_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../features/onboarding/presentation/view/onboarding_screen.dart';
import '../../features/home/presentation/view/nav_bar/nav_bar.dart';
abstract class AppRouter {

  static const kSplash = '/';
  static const kFirstOnBoarding = '/kFirstOnBoarding';
static const kLogin = '/kLogin';
static const kRegister = '/Register';
 static const kCharity = '/charity';
 static const kNavBar = '/NavBar';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: kSplash,
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kNavBar,
        builder: (context, state) => const NavBarView(),
      ),
      GoRoute(
        path: '/home',
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: '/posts',
        builder: (context, state) => const PostsScreen(),
      ),
      GoRoute(
        path: kCharity,
        builder: (context, state) => const CharityView(),
      ),
GoRoute(
        path: kLogin,
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        path:kRegister,
        builder: (context, state) => const RegisterScreen(),
      ),


      GoRoute(
        path: kFirstOnBoarding,
        builder: (context, state) => const OnBoardingView(),
      ),
    ],
  );
}
