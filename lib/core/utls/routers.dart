import 'package:aoun_tu/features/charity/presentation/view/charity_view.dart';
import 'package:aoun_tu/features/home/presentation/view/home_screen.dart';
import 'package:aoun_tu/features/posts/presentation/view/posts_screen.dart';
import 'package:go_router/go_router.dart';

import '../../features/home/presentation/view/nav_bar/nav_bar.dart';

abstract class AppRouter {
  static const kCharity = '/charity';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
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
    ],
  );
}
