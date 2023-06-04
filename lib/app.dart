import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'injectables.dart';
import 'src/application/auth/auth_bloc.dart';
import 'src/presentation/core/router.dart';
import 'src/presentation/core/theme/theme_config_style.dart';

class App extends StatelessWidget {
  const App({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final appRouter = AppRouter();
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<AuthBloc>(),
        )
      ],
      child: MaterialApp.router(
        theme: ThemeConfigStyle.light,
        darkTheme: ThemeConfigStyle.dark,
        themeMode: ThemeMode.dark,
        title: 'Perfect Deals Pricing App',
        routerConfig: appRouter.config(),
      ),
    );
  }
}
