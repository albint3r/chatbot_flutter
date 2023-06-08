import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/translations.dart';

import '../theme/theme_config_style.dart';

abstract class AppRouterDelegate {
  static MaterialApp router({
    required RootStackRouter appRouter,
    required BuildContext context,
  }) {
    return MaterialApp.router(
      localizationsDelegates: Translations.localizationsDelegates,
      supportedLocales: Translations.supportedLocales,
      theme: ThemeConfigStyle.light,
      darkTheme: ThemeConfigStyle.dark,
      themeMode: ThemeMode.dark,
      title: 'Perfect Deals Pricing App',
      routerConfig: appRouter.config(),
    );
  }
}
