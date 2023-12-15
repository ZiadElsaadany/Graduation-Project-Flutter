import 'package:aoun_tu/features/home/presentation/view/home_screen.dart';
import 'package:go_router/go_router.dart';

import '../../features/home/presentation/view/nav_bar/nav_bar.dart';

abstract class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const NavBarView(),
      ),
      GoRoute(
        path: '/',
        builder: (context, state) => const HomeScreen(),
      ),
    ],
  );
}
