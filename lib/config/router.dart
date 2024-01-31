import 'package:go_router/go_router.dart';

import '../pages/start_page/start_page.dart';
import '../pages/bottom_tab_bar.dart';

class RouteName {
  static const String start = '/';
  static const String home = '/home';

  // static const publicRoutes = [
  //   login,
  //   register,
  // ];
}

final router = GoRouter(
  // redirect: (context, state) {
  //   return null;
  // },
  routes: [
    GoRoute(
      path: RouteName.start,
      builder: (context, state) => const StartPage(),
    ),
    GoRoute(
      path: RouteName.home,
      builder: (context, state) => const BottomTabBar(),
    ),
  ],
);
