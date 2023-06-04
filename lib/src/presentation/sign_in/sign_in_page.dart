import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'widgets/body_sign_in.dart';

@RoutePage()
class SignInPage extends StatelessWidget {
  const SignInPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BodySignIn(),
    );
  }
}
