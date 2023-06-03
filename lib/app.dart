import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'injectables.dart';
import 'src/aplication/auth/auth_bloc.dart';
import 'src/presentation/core/router.dart';

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
        routerConfig: appRouter.config(),
      ),
    );
  }
}
