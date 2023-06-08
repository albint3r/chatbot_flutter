import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'widgets/body_sign_up.dart';

@RoutePage()
class SignUpPage extends StatelessWidget {
  const SignUpPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BodySignUp(),
    );
  }
}
