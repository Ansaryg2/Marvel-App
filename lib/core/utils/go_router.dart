import 'package:go_router/go_router.dart';
import 'package:marvel/features/splash/presentation/view/splash_view.dart';

import '../../features/home/presentation/view/home_view.dart';

abstract class AppRouter {
  static final router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(path: '/home_view', builder: (context, state) => const HomeView())
  ]);
}
