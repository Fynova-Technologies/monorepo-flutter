/// The `AppRouter` class defines the routing configuration for the Flutter application using the
/// `GoRouter` package.
/// The line `import 'package:flutter/foundation.dart';` is importing the `foundation` library from the
/// `flutter` package. This library provides fundamental classes and functions that are commonly used in
/// Flutter applications. It includes classes for handling asynchronous operations, defining
/// platform-specific behavior, and other utility functions. In this specific case, it is being used to
/// access the `kDebugMode` constant, which is used in the `debugLogDiagnostics` parameter of the
/// `GoRouter` configuration to enable or disable debug logging.
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';
import 'package:veda/app_setup/controller/app_state_observer.dart';
import 'package:veda/config/error_screen.dart';
import 'package:veda/config/route/paths.dart';
import 'package:veda/features/auth/presentation/login/login_screen.dart';
import 'package:veda/features/home/presentation/pages/bottomnavbar_screen.dart';
import 'package:veda/features/home/presentation/pages/home_screen.dart';
import 'package:veda/features/home/presentation/pages/newsfeed_screen.dart';
import 'package:veda/features/onboarding/presentation/onboarding_screen.dart';
import 'package:veda/features/welcome/presentation/pages/welcome_screen.dart';

class AppRouter {
  static final key = GlobalKey<NavigatorState>();
  static final router = GoRouter(
    initialLocation: Paths.appStateObserver.path,
    navigatorKey: key,
    routes: [
      GoRoute(
        path: Paths.appStateObserver.path,
        name: Paths.appStateObserver.routeName,
        pageBuilder: (context, state) => FadeTransitionPage(
            key: state.pageKey, child: const AppStateObserver()),
      ),
      GoRoute(
        path: Paths.onboardingScreenRoute.path,
        name: Paths.onboardingScreenRoute.routeName,
        pageBuilder: (context, state) => FadeTransitionPage(
          key: state.pageKey,
          child: const OnboardingScreen(),
        ),
      ),
      GoRoute(
        path: Paths.newsFeedScreenRoute.path,
        name: Paths.newsFeedScreenRoute.routeName,
        pageBuilder: (context, state) {
          final imageBack = state.extra as String?;
          return FadeTransitionPage(
            key: state.pageKey,
            child: NewsFeedScreen(imageBackground: imageBack ?? ''),
          );
        },
      ),
      GoRoute(
        path: Paths.loginScreenRoute.path,
        name: Paths.loginScreenRoute.routeName,
        pageBuilder: (context, state) => FadeTransitionPage(
          key: state.pageKey,
          child: const LoginScreen(),
        ),
      ),
      GoRoute(
        path: Paths.bottomNavBarScreen.path,
        name: Paths.bottomNavBarScreen.routeName,
        pageBuilder: (context, state) => FadeTransitionPage(
          key: state.pageKey,
          child: const BottomNavigationScreen(),
        ),
      ),
      GoRoute(
        path: Paths.homeScreenRoute.path,
        name: Paths.homeScreenRoute.routeName,
        pageBuilder: (context, state) => FadeTransitionPage(
          key: state.pageKey,
          child: const HomeScreen(),
        ),
      ),
      GoRoute(
        path: Paths.welcomeScreenRoute.path,
        name: Paths.welcomeScreenRoute.routeName,
        pageBuilder: (context, state) => FadeTransitionPage(
          key: state.pageKey,
          child: const WelcomeScreen(),
        ),
      ),
    ],
    errorBuilder: (context, state) => const ErrorScreen(),
    redirect: (BuildContext context, GoRouterState state) async {
      return null;
    },
    debugLogDiagnostics: kDebugMode,
  );
}

/// The `FadeTransitionPage` class is a custom transition page that applies a fade animation to its
/// child widget.
class FadeTransitionPage extends CustomTransitionPage<void> {
  FadeTransitionPage({
    required LocalKey super.key,
    required super.child,
  }) : super(
          transitionsBuilder: (c, animation, a2, child) => FadeTransition(
            opacity: animation.drive(CurveTween(curve: Curves.easeIn)),
            child: child,
          ),
        );
}
