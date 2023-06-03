import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../aplication/auth/auth_bloc.dart';
import '../google_sign_in/sign_in_page.dart';
import 'widgets/home_page.dart';

@RoutePage()
class HomeOrSignInPage extends StatelessWidget {
  const HomeOrSignInPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      buildWhen: (prev, curr) => prev.user != curr.user,
      builder: (context, state) {
        final auth = context.watch<AuthBloc>().state;
        if (auth.user == null) {
          return const SignInPage();
        }
        return const HomePage();
      },
    );
  }
}
