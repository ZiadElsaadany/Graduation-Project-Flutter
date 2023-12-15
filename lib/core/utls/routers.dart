

import 'package:aoun_tu/features/auth/presentation/view/login/login_screen.dart';
import 'package:aoun_tu/features/auth/presentation/view/register/register_screen.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter  {

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

    ],
  );
}