import 'package:chatbot/src/presentation/sign_in/sign_in_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'injectables.dart';
import 'src/application/auth/auth_bloc.dart';
import 'src/presentation/core/router/router.dart';
import 'src/presentation/core/theme/theme_config_style.dart';

class App extends StatelessWidget {
  const App({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<AuthBloc>(),
        )
      ],
      child: Builder(
        builder: (context) {
          return BlocBuilder<AuthBloc, AuthState>(
            buildWhen: (prev, curr) => prev.user != curr.user,
            builder: (context, state) {
              if (state.user == null) {
                return MaterialApp(
                  theme: ThemeConfigStyle.light,
                  darkTheme: ThemeConfigStyle.dark,
                  themeMode: ThemeMode.dark,
                  title: 'Sign in Perfect Deals',
                  home: const SignInPage(),
                );
              }
              final appRouter = getIt<AppRouter>();
              return MaterialApp.router(
                theme: ThemeConfigStyle.light,
                darkTheme: ThemeConfigStyle.dark,
                themeMode: ThemeMode.dark,
                title: 'Perfect Deals Pricing App',
                routerConfig: appRouter.config(),
              );
            },
          );
        },
      ),
    );
  }
}
