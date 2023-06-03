import 'package:flutter/material.dart';

import 'src/presentation/core/router.dart';

class App extends StatelessWidget {
  const App({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final appRouter = AppRouter();

    return MaterialApp.router(
      routerConfig: appRouter.config(),
    );
  }
}
