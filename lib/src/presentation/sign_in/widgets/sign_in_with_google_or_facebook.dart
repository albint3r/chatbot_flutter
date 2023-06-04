import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/auth/auth_bloc.dart';

class SignInWithGoogleOrFacebook extends StatelessWidget {
  const SignInWithGoogleOrFacebook({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        context.read<AuthBloc>().add(const AuthEvent.googleSingIn());
      },
      child: const Text('Google LogIn'),
    );
  }
}
