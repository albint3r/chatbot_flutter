import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/auth/auth_bloc.dart';
import '../../../core/widgets/icon_elevated_button.dart';

class GoogleSignInButton extends StatelessWidget {
  const GoogleSignInButton({super.key});

  void _signInWithGoogle(BuildContext context) {
    context.read<AuthBloc>().add(const AuthEvent.googleSingIn());
  }

  @override
  Widget build(BuildContext context) {
    return IconElevatedButton(
      value: 'Google',
      color: Colors.red,
      fontColor: Colors.white,
      onPress: () => _signInWithGoogle(context),
    );
  }
}
