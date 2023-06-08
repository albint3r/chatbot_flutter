import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../theme/theme_config_style.dart';

abstract class AppRouterDelegate {
  static MaterialApp router({
    required RootStackRouter appRouter,
  }) {
    return MaterialApp.router(
      theme: ThemeConfigStyle.light,
      darkTheme: ThemeConfigStyle.dark,
      themeMode: ThemeMode.dark,
      title: 'Perfect Deals Pricing App',
      routerConfig: appRouter.config(),
    );
  }
}
