import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:veda/app/splash_screen.dart';
import 'package:veda/app_setup/controller/app_controller.dart';
import 'package:veda/features/auth/presentation/login/login_screen.dart';
import 'package:veda/features/home/presentation/pages/home_screen.dart';
import 'package:veda/features/onboarding/presentation/onboarding_screen.dart';

class AppStateObserver extends ConsumerWidget {
  const AppStateObserver({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // We can implement dynamic routing as per the app state
    final appState = ref.watch(appController);
    return appState.map(
      started: (_) => const SplashScreen(),
      showOnBoarding: (_) => const SplashScreen(),
      authenticated: (_) => const SplashScreen(),
      unAuthenticated: (_) => const SplashScreen(),
    );
  }
}
