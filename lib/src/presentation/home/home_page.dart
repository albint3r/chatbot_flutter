import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../aplication/auth/auth_bloc.dart';
import '../google_sign_in/sign_in_page.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final auth = context.watch<AuthBloc>().state;
    if(auth.user == null) {
      return const SignInPage();
    }
    return const Scaffold(
      body: Center(
        child: Text('Hello World'),
      ),
    );
  }
}
