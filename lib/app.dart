import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'injectables.dart';
import 'src/application/auth/auth_bloc.dart';
import 'src/presentation/core/router/app_router.dart';
import 'src/presentation/core/router/app_router_delegate.dart';
import 'src/presentation/core/router/router_no_users.dart';

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
                return AppRouterDelegate.router(
                  appRouter: getIt<RouterNoUsers>(),
                  context: context,
                );
              }
              return AppRouterDelegate.router(
                appRouter: getIt<AppRouter>(),
                context: context,
              );
            },
          );
        },
      ),
    );
  }
}
