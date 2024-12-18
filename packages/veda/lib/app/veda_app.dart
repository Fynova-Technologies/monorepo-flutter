import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:veda/config/route/router.dart';
import 'package:veda/core/providers/locale_provider.dart';
import 'package:veda_resources/veda_resources.dart';

class VedaApp extends ConsumerWidget {
  const VedaApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedString = ref.watch(languageProvider);

    const localization = VedaLocalization();

    return VedaTheme(
        themeMode: ThemeMode.light,
        builder: (config) {
          return MaterialApp.router(
              localizationsDelegates: localization.delegates,
              supportedLocales: localization.supportedLocales,
              locale: Locale(selectedString),
              routerConfig: AppRouter.router,
              debugShowCheckedModeBanner: false,
              theme: config.light,
              darkTheme: config.dark);
        });
  }
}
