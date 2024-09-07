import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:mobile/src/components/auth/repo/auth_repository.dart';
import 'package:mobile/src/components/auth/views/login/login_root.dart';
import 'package:mobile/src/components/analytics/views/pages/dashboard_root.dart';
import 'package:mobile/src/components/settings/views/pages/settings_root.dart';
import 'package:mobile/src/utils/main_screen.dart';

part 'go_router.g.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root');
// final GlobalKey<NavigatorState> _shellNavigatorKey =
//     GlobalKey<NavigatorState>(debugLabel: 'shell');

// GoRouter configuration
@riverpod
GoRouter router(RouterRef ref) {
  final auth = ref.watch(authRepositoryProvider).unwrapPrevious().valueOrNull;
  final bool isLogin = auth != null ? true : false;

  final router = GoRouter(
      navigatorKey: _rootNavigatorKey,
      initialLocation: '/',
      redirect: (context, state) {
        bool onLoginPage = "/login" == state.fullPath;
        if (!isLogin && !onLoginPage) {
          return "/login";
        }
        if (isLogin && onLoginPage) {
          return "/";
        }
        return null;
      },
      routes: [
        ShellRoute(
            //navigatorKey: _shellNavigatorKey,
            builder: (context, state, child) {
              final String? routeName =
                  GoRouterState.of(context).topRoute?.path;
              final String title = switch (routeName) {
                '/' => 'Dashboard',
                '/settings' => 'Settings',
                _ => 'Gyroscope',
              };
              return MainScreen(title: title, child: child);
            },
            routes: <RouteBase>[
              GoRoute(
                path: '/',
                builder: (context, state) => const DashboardRoot(),
              ),
              GoRoute(
                path: '/settings',
                builder: (context, state) => const SettingRoot(),
              ),
            ]),
        GoRoute(
          path: '/login',
          builder: (context, state) => const LoginRoot(),
        )
      ]);
  return router;
}
