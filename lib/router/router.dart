import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:sang/add_history_page.dart';
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
      routes: [
        GoRoute(
          path: "add_history_page",
          pageBuilder: (context, state) => CupertinoPage(
            child: AddHistoryPage(),
          ),
        ),
      ],
    )
  ],
);
