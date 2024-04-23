import 'package:go_router/go_router.dart';
import 'package:sang/home_page.dart';

final GoRouter router = GoRouter(
  initialLocation: "/",
  routes: <RouteBase>[
    GoRoute(
      path: "/",
      redirect: (context, state) => "/home",
    ),
    GoRoute(
      path: "/home",
      pageBuilder: (context, state) => NoTransitionPage(
        child: HomePage(),
      ),
    )
  ],
);
